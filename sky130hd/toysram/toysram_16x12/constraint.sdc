current_design ra_64x72_2r1w

set clk_name clk
set clk_port_name clk
set clk_period 5.0
set clk_io_pct 0.2

set clk_port [get_ports $clk_port_name]

create_clock -name $clk_name -period $clk_period $clk_port

# Synchronous reset needs constraining
#set_input_delay [expr $clk_period * $clk_io_pct] -clock $clk_name [get_ports reset]
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#wtf latch it internally with some instances of a reset macro and divide to regions?
#    one latch (or triple if it's async?) to gen stage 1
#    fanout to second level for quadrants
# ignore for now to get realistic functional timing
set_false_path -from [get_ports {reset}]
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

# 20=
# 16=
# 12=
#  8=
set_max_fanout 16 [current_design]

set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin Y [all_inputs]
set_load 0.03344 [all_outputs]

set_clock_uncertainty 0.25 [get_clocks $clk_name]

set_clock_transition 0.15 [get_clocks $clk_name]

set_timing_derate -early 0.95
set_timing_derate -late 1.05

