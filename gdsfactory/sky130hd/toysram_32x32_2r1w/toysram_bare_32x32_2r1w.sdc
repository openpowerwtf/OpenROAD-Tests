# Generated by gdsDummy       26/10/2022 08:40:47

# inputs
#set ins [list "$::comp/rd0_c_na0" "$::comp/rd0_c_a0" "$::comp/rd0_na1_na2" "$::comp/rd0_na1_a2" "$::comp/rd0_a1_na2" "$::comp/rd0_a1_a2" "$::comp/rd0_na3" "$::comp/rd0_a3" "$::comp/rd0_na4" "$::comp/rd0_a4" "$::comp/rd1_c_na0" "$::comp/rd1_c_a0" "$::comp/rd1_na1_na2" "$::comp/rd1_na1_a2" "$::comp/rd1_a1_na2" "$::comp/rd1_a1_a2" "$::comp/rd1_na3" "$::comp/rd1_a3" "$::comp/rd1_na4" "$::comp/rd1_a4" "$::comp/wr0_c_na0" "$::comp/wr0_c_a0" "$::comp/wr0_na1_na2" "$::comp/wr0_na1_a2" "$::comp/wr0_a1_na2" "$::comp/wr0_a1_a2" "$::comp/wr0_na3" "$::comp/wr0_a3" "$::comp/wr0_na4" "$::comp/wr0_a4" "$::comp/wr0_dat[31]" "$::comp/wr0_dat[30]" "$::comp/wr0_dat[29]" "$::comp/wr0_dat[28]" "$::comp/wr0_dat[27]" "$::comp/wr0_dat[26]" "$::comp/wr0_dat[25]" "$::comp/wr0_dat[24]" "$::comp/wr0_dat[23]" "$::comp/wr0_dat[22]" "$::comp/wr0_dat[21]" "$::comp/wr0_dat[20]" "$::comp/wr0_dat[19]" "$::comp/wr0_dat[18]" "$::comp/wr0_dat[17]" "$::comp/wr0_dat[16]" "$::comp/wr0_dat[15]" "$::comp/wr0_dat[14]" "$::comp/wr0_dat[13]" "$::comp/wr0_dat[12]" "$::comp/wr0_dat[11]" "$::comp/wr0_dat[10]" "$::comp/wr0_dat[9]" "$::comp/wr0_dat[8]" "$::comp/wr0_dat[7]" "$::comp/wr0_dat[6]" "$::comp/wr0_dat[5]" "$::comp/wr0_dat[4]" "$::comp/wr0_dat[3]" "$::comp/wr0_dat[2]" "$::comp/wr0_dat[1]" "$::comp/wr0_dat[0]" ]
#set inDelays [list [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] [expr $::clk_period*.9] ]

# outputs
set outs [list "$::comp/rd0_dat[31]" "$::comp/rd0_dat[30]" "$::comp/rd0_dat[29]" "$::comp/rd0_dat[28]" "$::comp/rd0_dat[27]" "$::comp/rd0_dat[26]" "$::comp/rd0_dat[25]" "$::comp/rd0_dat[24]" "$::comp/rd0_dat[23]" "$::comp/rd0_dat[22]" "$::comp/rd0_dat[21]" "$::comp/rd0_dat[20]" "$::comp/rd0_dat[19]" "$::comp/rd0_dat[18]" "$::comp/rd0_dat[17]" "$::comp/rd0_dat[16]" "$::comp/rd0_dat[15]" "$::comp/rd0_dat[14]" "$::comp/rd0_dat[13]" "$::comp/rd0_dat[12]" "$::comp/rd0_dat[11]" "$::comp/rd0_dat[10]" "$::comp/rd0_dat[9]" "$::comp/rd0_dat[8]" "$::comp/rd0_dat[7]" "$::comp/rd0_dat[6]" "$::comp/rd0_dat[5]" "$::comp/rd0_dat[4]" "$::comp/rd0_dat[3]" "$::comp/rd0_dat[2]" "$::comp/rd0_dat[1]" "$::comp/rd0_dat[0]" "$::comp/rd1_dat[31]" "$::comp/rd1_dat[30]" "$::comp/rd1_dat[29]" "$::comp/rd1_dat[28]" "$::comp/rd1_dat[27]" "$::comp/rd1_dat[26]" "$::comp/rd1_dat[25]" "$::comp/rd1_dat[24]" "$::comp/rd1_dat[23]" "$::comp/rd1_dat[22]" "$::comp/rd1_dat[21]" "$::comp/rd1_dat[20]" "$::comp/rd1_dat[19]" "$::comp/rd1_dat[18]" "$::comp/rd1_dat[17]" "$::comp/rd1_dat[16]" "$::comp/rd1_dat[15]" "$::comp/rd1_dat[14]" "$::comp/rd1_dat[13]" "$::comp/rd1_dat[12]" "$::comp/rd1_dat[11]" "$::comp/rd1_dat[10]" "$::comp/rd1_dat[9]" "$::comp/rd1_dat[8]" "$::comp/rd1_dat[7]" "$::comp/rd1_dat[6]" "$::comp/rd1_dat[5]" "$::comp/rd1_dat[4]" "$::comp/rd1_dat[3]" "$::comp/rd1_dat[2]" "$::comp/rd1_dat[1]" "$::comp/rd1_dat[0]" ]
set outDelays [list [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] [expr $::clk_period*.1] ]

set i 0
foreach o $outs {
   set pins [get_fanout -from $o -pin_levels 1]
   set delay [lindex $outDelays $i]
   puts "\[gdsDummy\] $o"
   foreach p $pins {
      set name [get_full_name $p]
      if {![string equal $name $o]} {
         puts "\[gdsDummy\]   $name: $delay"
         set_input_delay -clock $::clk_name $delay $p
      }
   }
   incr i
}
