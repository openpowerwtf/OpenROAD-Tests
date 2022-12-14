// Generated by gdsDummy       {now.strftime("%d/%m/%Y %H:%M:%S")}

module tri_64x72_1r1w (
 inout                 vdd,
 inout                 vcs,
 inout                 gnd,
 input                 clk,
 input                 rst,
 input                 sg_0,
 input                 abst_sl_thold_0,
 input                 ary_nsl_thold_0,
 input                 time_sl_thold_0,
 input                 repr_sl_thold_0,
 input                 rd0_act,
 input  [0:5]          rd0_adr,
 output [0:71]         do0,
 input                 wr_act,
 input  [0:5]          wr_adr,
 input  [0:71]         di,
 input                 abst_scan_in,
 output                abst_scan_out,
 input                 time_scan_in,
 output                time_scan_out,
 input                 repr_scan_in,
 output                repr_scan_out,
 input                 scan_dis_dc_b,
 input                 scan_diag_dc,
 input                 ccflush_dc,
 input                 clkoff_dc_b,
 input                 d_mode_dc,
 input  [0:4]          mpw1_dc_b,
 input                 mpw2_dc_b,
 input  [0:4]          delay_lclkr_dc,
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
 input  [0:3]          abist_di,
 input                 abist_bw_odd,
 input                 abist_bw_even,
 input  [0:5]          abist_wr_adr,
 input                 wr_abst_act,
 input  [0:5]          abist_rd0_adr,
 input                 rd0_abst_act,
 input                 tc_lbist_ary_wrt_thru_dc,
 input                 abist_ena_1,
 input                 abist_g8t_rd0_comp_ena,
 input                 abist_raw_dc_b,
 input  [0:3]          obs0_abist_cmp
);
endmodule
