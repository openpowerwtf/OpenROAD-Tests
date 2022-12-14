`define GENMODE 1
`define USE_POWER_PINS 1

module toysram_32x32_2r1w #(
   parameter GENMODE = `GENMODE,        // 0=NoDelay (sim), 1=Delay (pd)
   parameter LATCHRD = 1                // 1=latch read data, 0=unlatched
)(

`ifdef USE_POWER_PINS
   input          vccd1,	// User area 1 1.8V supply
   input          vssd1,	// User area 1 digital ground
`endif

   input         clk,
   input         reset,
   input         strobe,
   input         rd_enb_0,
   input  [0:4]  rd_adr_0,
   output [0:31] rd_dat_0,
   input         rd_enb_1,
   input  [0:4]  rd_adr_1,
   output [0:31] rd_dat_1,
   input         wr_enb_0,
   input  [0:4]  wr_adr_0,
   input  [0:31] wr_dat_0
);

 reg           rd_enb_0_q;
 reg [0:4]     rd_adr_0_q;
 reg [0:31]    rd_dat_0_q;

 reg           rd_enb_1_q;
 reg [0:4]     rd_adr_1_q;
 reg [0:31]    rd_dat_1_q;

 reg           wr_enb_0_q;
 reg [0:4]     wr_adr_0_q;
 reg [0:31]    wr_dat_0_q;

 //    -- read 0
 wire rd0_c_na0;
 wire rd0_c_a0;
 wire rd0_na1_na2;
 wire rd0_na1_a2;
 wire rd0_a1_na2;
 wire rd0_a1_a2;
 wire rd0_na3;
 wire rd0_a3;
 wire rd0_na4;
 wire rd0_a4;
 wire [0:31] ra_rd_dat_0;

 //    -- read 1
 wire rd1_c_na0;
 wire rd1_c_a0;
 wire rd1_na1_na2;
 wire rd1_na1_a2;
 wire rd1_a1_na2;
 wire rd1_a1_a2;
 wire rd1_na3;
 wire rd1_a3;
 wire rd1_na4;
 wire rd1_a4;
 wire [0:31] ra_rd_dat_1;

 //    -- write 0
 wire wr0_c_na0;
 wire wr0_c_a0;
 wire wr0_na1_na2;
 wire wr0_na1_a2;
 wire wr0_a1_na2;
 wire wr0_a1_a2;
 wire wr0_na3;
 wire wr0_a3;
 wire wr0_na4;
 wire wr0_a4;
 wire ra_wr_enb_0;
 wire [0:4] ra_wr_adr_0;
 wire [0:31] ra_wr_dat_0;
 wire strobe_int;

// latch inputs
// reset all; only enb required
 always @ (posedge clk) begin
   if (reset == 1'b1) begin
      rd_enb_0_q <= 0;
      rd_adr_0_q <= 0;
      rd_enb_1_q <= 0;
      rd_adr_1_q <= 0;
      wr_enb_0_q <= 0;
      wr_adr_0_q <= 0;
      wr_dat_0_q <= 0;
   end else begin
      rd_enb_0_q <= rd_enb_0;
      rd_adr_0_q <= rd_adr_0;
      rd_enb_1_q <= rd_enb_1;
      rd_adr_1_q <= rd_adr_1;
      wr_enb_0_q <= wr_enb_0;
      wr_adr_0_q <= wr_adr_0;
      wr_dat_0_q <= wr_dat_0;
   end
end

// latch read data conditionally
generate
   if (LATCHRD) begin
     always @ (posedge clk) begin
     	rd_dat_0_q <= ra_rd_dat_0;
     	rd_dat_1_q <= ra_rd_dat_1;
     end
     assign rd_dat_0 = rd_dat_0_q;
     assign rd_dat_1 = rd_dat_1_q;
  end else begin
     assign rd_dat_0 = ra_rd_dat_0;
     assign rd_dat_1 = ra_rd_dat_1;
  end
endgenerate

// don't use the clock as data in sim mode
if (`GENMODE == 0)
   assign strobe_int = 1'b1;
else
   assign strobe_int = strobe;

// generate the controls for the array

address_clock_sdr_2r1w_32 add_clk (

   .strobe       (strobe_int),

   .rd_enb_0     (rd_enb_0_q),
   .rd_adr_0     (rd_adr_0_q),
   .rd_enb_1     (rd_enb_1_q),
   .rd_adr_1     (rd_adr_1_q),
   .wr_enb_0     (wr_enb_0_q),
   .wr_adr_0     (wr_adr_0_q),

   // read 0
   .rd0_c_na0   (rd0_c_na0),
   .rd0_c_a0    (rd0_c_a0),
   .rd0_na1_na2 (rd0_na1_na2),
   .rd0_na1_a2  (rd0_na1_a2),
   .rd0_a1_na2  (rd0_a1_na2),
   .rd0_a1_a2   (rd0_a1_a2),
   .rd0_na3     (rd0_na3),
   .rd0_a3      (rd0_a3),
   .rd0_na4     (rd0_na4),
   .rd0_a4      (rd0_a4),

   // read 1
   .rd1_c_na0   (rd1_c_na0),
   .rd1_c_a0    (rd1_c_a0),
   .rd1_na1_na2 (rd1_na1_na2),
   .rd1_na1_a2  (rd1_na1_a2),
   .rd1_a1_na2  (rd1_a1_na2),
   .rd1_a1_a2   (rd1_a1_a2),
   .rd1_na3     (rd1_na3),
   .rd1_a3      (rd1_a3),
   .rd1_na4     (rd1_na4),
   .rd1_a4      (rd1_a4),

   // write 0
   .wr0_c_na0   (wr0_c_na0),
   .wr0_c_a0    (wr0_c_a0),
   .wr0_na1_na2 (wr0_na1_na2),
   .wr0_na1_a2  (wr0_na1_a2),
   .wr0_a1_na2  (wr0_a1_na2),
   .wr0_a1_a2   (wr0_a1_a2),
   .wr0_na3     (wr0_na3),
   .wr0_a3      (wr0_a3),
   .wr0_na4     (wr0_na4),
   .wr0_a4      (wr0_a4)

);

// bare array
toysram_bare_32x32_2r1w ra(

`ifdef USE_POWER_PINS
   .VDD(vccd1),
   .GND(vssd1),
`endif

   // read 0
   .rd0_c_na0   (rd0_c_na0),
   .rd0_c_a0    (rd0_c_a0),
   .rd0_na1_na2 (rd0_na1_na2),
   .rd0_na1_a2  (rd0_na1_a2),
   .rd0_a1_na2  (rd0_a1_na2),
   .rd0_a1_a2   (rd0_a1_a2),
   .rd0_na3     (rd0_na3),
   .rd0_a3      (rd0_a3),
   .rd0_na4     (rd0_na4),
   .rd0_a4      (rd0_a4),
   .rd0_dat     (ra_rd_dat_0),

   // read 1
   .rd1_c_na0   (rd1_c_na0),
   .rd1_c_a0    (rd1_c_a0),
   .rd1_na1_na2 (rd1_na1_na2),
   .rd1_na1_a2  (rd1_na1_a2),
   .rd1_a1_na2  (rd1_a1_na2),
   .rd1_a1_a2   (rd1_a1_a2),
   .rd1_na3     (rd1_na3),
   .rd1_a3      (rd1_a3),
   .rd1_na4     (rd1_na4),
   .rd1_a4      (rd1_a4),
   .rd1_dat     (ra_rd_dat_1),

   // write 0
   .wr0_c_na0   (wr0_c_na0),
   .wr0_c_a0    (wr0_c_a0),
   .wr0_na1_na2 (wr0_na1_na2),
   .wr0_na1_a2  (wr0_na1_a2),
   .wr0_a1_na2  (wr0_a1_na2),
   .wr0_a1_a2   (wr0_a1_a2),
   .wr0_na3     (wr0_na3),
   .wr0_a3      (wr0_a3),
   .wr0_na4     (wr0_na4),
   .wr0_a4      (wr0_a4),
   .wr0_dat     (wr_dat_0_q)
  );

endmodule
