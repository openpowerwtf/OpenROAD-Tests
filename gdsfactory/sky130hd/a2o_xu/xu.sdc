set clk_name clk
set clk_port_name clk
set clk_period 2.5

# pervasive
puts "Setting false paths for pervasive inputs..."
set_false_path -from pc_xu_ccflush_dc
set_false_path -from clkoff_dc_b
set_false_path -from d_mode_dc
set_false_path -from delay_lclkr_dc
set_false_path -from mpw1_dc_b
set_false_path -from mpw2_dc_b
set_false_path -from func_sl_force
set_false_path -from func_sl_thold_0_b
set_false_path -from func_slp_sl_thold_0_b
set_false_path -from sg_0
set_false_path -from fce_0
set_false_path -from scan_in
