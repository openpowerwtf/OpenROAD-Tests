set clk_name clk
set clk_port_name clk
set clk_period 2.5

# pervasive
puts "Setting false paths for pervasive inputs..."

set_false_path -from rp_rv_ccflush_dc
set_false_path -from rp_rv_func_sl_thold_3
set_false_path -from rp_rv_gptr_sl_thold_3
set_false_path -from rp_rv_sg_3
set_false_path -from rp_rv_fce_3
set_false_path -from an_ac_scan_diag_dc
set_false_path -from an_ac_scan_dis_dc_b
set_false_path -from scan_in
