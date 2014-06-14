if { ![project_exists {lab3}] } {
     project_new {lab3}
} else {
     project_open {lab3}
}
set_project_settings -cmp {lab3}
if { ![project_settings_exist -sim lab3] } {
        set_project_settings -sim lab3
}
set_global_assignment -section_id {lab3} -name {EDA_DESIGN_ENTRY_SYNTHESIS_TOOL} {PRECISION SYNTHESIS}
set_global_assignment -section_id {lab3} -name {EDA_SIMULATION_TOOL} {MODELSIM (VHDL OUTPUT FROM QUARTUS II)}
set_global_assignment -name {EDIF_FILE} {lab3.edf}
set_global_assignment -section_id {eda_design_synthesis} -name {EDA_USE_LMF} {mentor.lmf}
set_global_assignment -section_id {eda_design_synthesis} -name {EDA_INPUT_GND_NAME} {GND}
set_global_assignment -section_id {eda_design_synthesis} -name {EDA_INPUT_VCC_NAME} {VCC}
set_global_assignment -section_id {eda_design_synthesis} -name {EDA_SHOW_LMF_MAPPING_MESSAGES} {OFF}
set_global_assignment -section_id {eda_design_synthesis} -name {EDA_RUN_TOOL_AUTOMATICALLY} {OFF}
set_global_assignment -section_id {eda_design_synthesis} -name {EDA_INPUT_DATA_FORMAT} {EDIF}
set_global_assignment -section_id {eda_design_synthesis} -name {EDA_OUTPUT_DATA_FORMAT} {EDIF}
set_global_assignment -section_id {eda_simulation} -name {EDA_FLATTEN_BUSES} {OFF}
set_global_assignment -section_id {eda_timing_analysis} -name {EDA_FLATTEN_BUSES} {OFF}
set_global_assignment -section_id {lab3} -name {DEVICE} {EP2C35F672C7}
set_global_assignment -name {FAMILY} {CYCLONE II}
set_global_assignment -name {PROJECT_SHOW_ENTITY_NAME} {OFF}
if { [file exists {lab3_pnr_constraints.tcl}] } {
  source lab3_pnr_constraints.tcl
}
export_assignment_files
package require ::quartus::flow
if { [catch {execute_module -tool map} result] } {
  puts "Error running quartus_map $result"
} elseif { [catch {execute_module -tool fit} result] } {
  puts "Error running quartus_fit $result"
} elseif { [catch {execute_module -tool tan} result] } {
  puts "Error running quartus_tan $result"
} elseif { [catch {execute_module -tool asm} result] } {
  puts "Error running quartus_asm $result"
} elseif { [catch {execute_module -tool eda} result] } {
  puts "Error running quartus_eda $result"
}
project_close
