// Generated by gdsDummy       19/10/2022 10:46:45

module tri_iuq_cpl_arr #(
  parameter ADDRESSABLE_PORTS = 64,
  parameter ADDRESSBUS_WIDTH = 6,
  parameter PORT_BITWIDTH = 64,
  parameter LATCHED_READ = 1'b1,
  parameter LATCHED_READ_DATA = 1'b1,
  parameter LATCHED_WRITE = 1'b1
) (
 inout                 gnd,
 inout                 vdd,
 input                 clk,
 input                 rst,
 input                 delay_lclkr_dc,
 input                 mpw1_dc_b,
 input                 mpw2_dc_b,
 input                 force_t,
 input                 thold_0_b,
 input                 sg_0,
 input                 scan_in,
 output                scan_out,
 input                 re0,
 input  [0:5]          ra0,
 output [0:142]        do0,
 input                 re1,
 input  [0:5]          ra1,
 output [0:142]        do1,
 input                 we0,
 input  [0:5]          wa0,
 input  [0:142]        di0,
 input                 we1,
 input  [0:5]          wa1,
 input  [0:142]        di1,
 output                perr
);
endmodule
