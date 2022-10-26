current_design $::env(DESIGN_NAME)

set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin Y [all_inputs]
set_load 0.03344 [all_outputs]

set clk_name clk
set clk_port_name clk
set clk_period 1.5
set clk_port [get_ports $clk_port_name]

create_clock -name $clk_name -period $clk_period  $clk_port

set non_clock_inputs [lsearch -inline -all -not -exact [all_inputs] $clk_port]

set_input_delay  [expr $clk_period * .1] -clock $clk_name $non_clock_inputs
set_output_delay [expr $clk_period * .1] -clock $clk_name [all_outputs]

set_max_fanout 8 [current_design]

set constraints $::env(DESIGN_DIR)/$::env(DESIGN_NAME).sdc
set ::clk_name $clk_name
set ::clk_period $clk_period

if {[file exists $constraints]} {
   source $constraints
}

