// Generated by gdsDummy       {now.strftime("%d/%m/%Y %H:%M:%S")}

module tri_128x34_4w_1r1w (
 inout                 gnd,
 inout                 vdd,
 inout                 vcs,
 input                 clk,
 input                 rst,
 input                 rd_act,
 input                 wr_act,
 input                 sg_0,
 input                 abst_sl_thold_0,
 input                 ary_nsl_thold_0,
 input                 time_sl_thold_0,
 input                 repr_sl_thold_0,
 input                 func_sl_thold_0_b,
 input                 func_force,
 input                 clkoff_dc_b,
 input                 ccflush_dc,
 input                 scan_dis_dc_b,
 input                 scan_diag_dc,
 input                 d_mode_dc,
 input  [0:4]          mpw1_dc_b,
 input                 mpw2_dc_b,
 input  [0:4]          delay_lclkr_dc,
 input                 wr_abst_act,
 input                 rd0_abst_act,
 input  [0:3]          abist_di,
 input                 abist_bw_odd,
 input                 abist_bw_even,
 input  [0:8]          abist_wr_adr,
 input  [0:8]          abist_rd0_adr,
 input                 tc_lbist_ary_wrt_thru_dc,
 input                 abist_ena_1,
 input                 abist_g8t_rd0_comp_ena,
 input                 abist_raw_dc_b,
 input  [0:3]          obs0_abist_cmp,
 input  [0:1]          abst_scan_in,
 input                 time_scan_in,
 input                 repr_scan_in,
 input                 func_scan_in,
 output [0:1]          abst_scan_out,
 output                time_scan_out,
 output                repr_scan_out,
 output                func_scan_out,
 input                 lcb_bolt_sl_thold_0,
 input                 pc_bo_enable_2,
 input                 pc_bo_reset,
 input                 pc_bo_unload,
 input                 pc_bo_repair,
 input                 pc_bo_shdata,
 input  [0:1]          pc_bo_select,
 output [0:1]          bo_pc_failout,
 output [0:1]          bo_pc_diagloop,
 input                 tri_lcb_mpw1_dc_b,
 input                 tri_lcb_mpw2_dc_b,
 input                 tri_lcb_delay_lclkr_dc,
 input                 tri_lcb_clkoff_dc_b,
 input                 tri_lcb_act_dis_dc,
 input  [0:3]          wr_way,
 input  [0:8]          wr_addr,
 input  [0:135]        data_in,
 input  [0:8]          rd_addr,
 output [0:135]        data_out
);
endmodule