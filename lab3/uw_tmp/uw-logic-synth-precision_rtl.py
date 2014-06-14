#--------------------------------------------------------------
# remove xrf files to prevent warning about moving them because
# they already exist

my_rm( ["uw_tmp/*.xrf", "uw_tmp/*.qsf"] )

#--------------------------------------------------------------
# precision will generate these files,
# so rm old versions to make sure that don't pick up
# obsolete file in case precision fails

my_rm( [ "lab3_gate.vhd" ] )
my_rm( [ "lab3_area.txt" ] )
my_rm( [ "lab3_speed.txt" ] )

my_mkdir( "LOG" )

#--------------------------------------------------------------
# run precision

xsys( "precision -shell -file uw_tmp/uw-logic-synth-precision_rtl.tcl" )

my_rm( ["lab3_logic.xdb", "lab3_logic.xrf"] )

my_mv( "uw_tmp/lab3.edf", "uw_tmp/lab3_logic.edf" )

#------------------------------------------------------------------------
# generate no_generics architecture

#--------------------------------------------------------------
# copy modelsim.ini to local directory

# xsys( "vmap -modelsimini /watform/pkg/modelsim/modeltech/modelsim.ini -c" )
xsys( "vmap -c" )

#--------------------------------------------------------------
# libraries

xsys( "vlib work-msim")

# currently used only by altera
xsys( "vlib altera_mf")
xsys( "vmap altera_mf /home/ece327/altera/vhdl_libs/altera_mf")

xsys( "vlib cycloneii")
xsys( "vmap cycloneii /home/ece327/altera/vhdl_libs/cycloneii")

#--------------------------------------------------------------
#

# get synthesized entity (std_logic vector and no generics)
# xsys( "vlog -novopt -work work-msim uw_tmp/lab3_logic.v")
# vgencomp_to_arch( "lab3", "logic", [] + [ "mem.vhd", "lab3.vhd" ] )
