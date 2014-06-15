
set proj $quartus(args)

# set proj wg_dp

project_open $proj

set_global_assignment -name USE_TIMEQUEST_TIMING_ANALYZER ON

create_timing_netlist

report_clock_fmax_summary \
  -file timing_chip.rpt \
  -stdout

report_timing \
  -npaths 5 \
  -detail path_only \
  -file timing_chip_path.rpt
  
report_timing \
  -npaths 5 \
  -detail path_only
