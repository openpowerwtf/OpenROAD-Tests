// Generated by gdsDummy       {now.strftime("%d/%m/%Y %H:%M:%S")}

module tri_st_mult.v (
 input                 clk,
 input                 rst,
 inout                 vdd,
 inout                 gnd,
 input                 d_mode_dc,
 input                 delay_lclkr_dc,
 input                 mpw1_dc_b,
 input                 mpw2_dc_b,
 input                 func_sl_force,
 input                 func_sl_thold_0_b,
 input                 sg_0,
 input                 scan_in,
 output                scan_out,
 input                 dec_mul_ex1_mul_recform,
 input  [0:0]          dec_mul_ex1_mul_val,
 input                 dec_mul_ex1_mul_ord,
 input                 dec_mul_ex1_mul_ret,
 input                 dec_mul_ex1_mul_sign,
 input                 dec_mul_ex1_mul_size,
 input                 dec_mul_ex1_mul_imm,
 input                 dec_mul_ex1_xer_ov_update,
 input  [0:0]          cp_flush,
 input                 ex1_spr_msr_cm,
 input  [0:63]         byp_mul_ex2_rs1,
 input  [0:63]         byp_mul_ex2_rs2,
 input                 byp_mul_ex2_abort,
 input  [0:9]          byp_mul_ex2_xer,
 output [0:63]         mul_byp_ex6_rt,
 output [0:9]          mul_byp_ex6_xer,
 output [0:3]          mul_byp_ex6_cr,
 output                mul_byp_ex5_abort,
 output                mul_byp_ex5_ord_done,
 output                mul_byp_ex5_done,
 output [0:0]          mul_spr_running
);
endmodule
