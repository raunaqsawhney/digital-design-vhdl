source /home/ece327/lib/lib-msim.tcl

proc reload {} {
  vcom -93 +acc -work work-msim sum.vhd sum_tb.vhd
}

if { "sum_tb.sim" ne "" } {
  source sum_tb.sim
}


