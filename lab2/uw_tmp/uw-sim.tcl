source /home/ece327/lib/lib-msim.tcl

proc reload {} {
  vcom -93 +acc -work work-msim fir_synth_pkg.vhd fir.vhd fir_synth_pkg.vhd fir_tb.vhd
}

if { "" ne "" } {
  source 
}


