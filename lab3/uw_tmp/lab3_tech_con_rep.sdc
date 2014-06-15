###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name INFF -value "FALSE" -port -type STRING clk -design gatelevel 

##################
# Clocks
##################
create_clock { clk } -domain ClockDomain0 -name clk -period 4.000000 -waveform { 0.000000 2.000000 } -design gatelevel 

