// Generated by gdsDummy       19/10/2022 10:46:45

module tri_512x16_1r1w_1 #(
  parameter addressable_ports = 128,
  parameter addressbus_width = 9,
  parameter port_bitwidth = 16,
  parameter ways = 1
) (
 inout                 vdd,
 inout                 vcs,
 inout                 gnd,
 input                 clk,
 input                 rst,
 input                 rd_act,
 input                 wr_act,
 input                 lcb_d_mode_dc,
 input                 lcb_clkoff_dc_b,
 input  [0:4]          lcb_mpw1_dc_b,
 input                 lcb_mpw2_dc_b,
 input  [0:4]          lcb_delay_lclkr_dc,
 input                 ccflush_dc,
 input                 scan_dis_dc_b,
 input                 scan_diag_dc,
 input                 func_scan_in,
 output                func_scan_out,
 input                 lcb_sg_0,
 input                 lcb_sl_thold_0_b,
 input                 lcb_time_sl_thold_0,
 input                 lcb_abst_sl_thold_0,
 input                 lcb_ary_nsl_thold_0,
 input                 lcb_repr_sl_thold_0,
 input                 time_scan_in,
 output                time_scan_out,
 input                 abst_scan_in,
 output                abst_scan_out,
 input                 repr_scan_in,
 output                repr_scan_out,
 input  [0:3]          abist_di,
 input                 abist_bw_odd,
 input                 abist_bw_even,
 input  [0:6]          abist_wr_adr,
 input                 wr_abst_act,
 input  [0:6]          abist_rd0_adr,
 input                 rd0_abst_act,
 input                 tc_lbist_ary_wrt_thru_dc,
 input                 abist_ena_1,
 input                 abist_g8t_rd0_comp_ena,
 input                 abist_raw_dc_b,
 input  [0:3]          obs0_abist_cmp,
 input                 lcb_bolt_sl_thold_0,
 input                 pc_bo_enable_2,
 input                 pc_bo_reset,
 input                 pc_bo_unload,
 input                 pc_bo_repair,
 input                 pc_bo_shdata,
 input                 pc_bo_select,
 output                bo_pc_failout,
 output                bo_pc_diagloop,
 input                 tri_lcb_mpw1_dc_b,
 input                 tri_lcb_mpw2_dc_b,
 input                 tri_lcb_delay_lclkr_dc,
 input                 tri_lcb_clkoff_dc_b,
 input                 tri_lcb_act_dis_dc,
 input  [0:15]         bw,
 input  [0:8]          wr_adr,
 input  [0:8]          rd_adr,
 input  [0:15]         di,
 output [0:15]         dout
);
endmodule
