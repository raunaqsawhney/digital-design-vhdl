source /home/ece327/lib/lib-msim.tcl

proc reload {} {
  vcom -93 +acc -work work-msim  myflipflop.vhd
}

if { "" ne "" } {
  source 
}


