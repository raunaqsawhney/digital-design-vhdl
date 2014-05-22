source /home/ece327/lib/lib-msim.tcl

proc reload {} {
  vcom -93 +acc -work work-msim heatingsys.vhd heatingsys_tb.vhd
}

if { "heatingsys_tb.sim" ne "" } {
  source heatingsys_tb.sim
}


