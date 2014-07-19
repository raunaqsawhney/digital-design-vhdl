onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /kirsch_tb/uut/i_clock
add wave -noupdate /kirsch_tb/uut/i_reset
add wave -noupdate /kirsch_tb/uut/i_valid
add wave -noupdate -radix unsigned /kirsch_tb/uut/i_pixel
add wave -noupdate /kirsch_tb/uut/o_valid
add wave -noupdate /kirsch_tb/uut/o_edge
add wave -noupdate /kirsch_tb/uut/o_dir
add wave -noupdate /kirsch_tb/uut/o_mode
add wave -noupdate /kirsch_tb/uut/o_row
add wave -noupdate -radix unsigned /kirsch_tb/uut/col
add wave -noupdate -radix unsigned /kirsch_tb/uut/row
add wave -noupdate -expand /kirsch_tb/uut/mem_wren
add wave -noupdate -radix unsigned /kirsch_tb/uut/a
add wave -noupdate -radix unsigned /kirsch_tb/uut/h
add wave -noupdate -radix unsigned /kirsch_tb/uut/g
add wave -noupdate -radix unsigned /kirsch_tb/uut/b
add wave -noupdate -radix unsigned /kirsch_tb/uut/i
add wave -noupdate -radix unsigned /kirsch_tb/uut/f
add wave -noupdate -radix unsigned /kirsch_tb/uut/c
add wave -noupdate -radix unsigned /kirsch_tb/uut/d
add wave -noupdate -radix unsigned /kirsch_tb/uut/e
add wave -noupdate -radix unsigned /kirsch_tb/uut/tmp_next_zero
add wave -noupdate -radix unsigned /kirsch_tb/uut/tmp_next_one
add wave -noupdate -radix unsigned -childformat {{/kirsch_tb/uut/mem_out(2) -radix unsigned} {/kirsch_tb/uut/mem_out(1) -radix unsigned} {/kirsch_tb/uut/mem_out(0) -radix unsigned}} -expand -subitemconfig {/kirsch_tb/uut/mem_out(2) {-height 16 -radix unsigned} /kirsch_tb/uut/mem_out(1) {-height 16 -radix unsigned} /kirsch_tb/uut/mem_out(0) {-height 16 -radix unsigned}} /kirsch_tb/uut/mem_out
add wave -noupdate -expand /kirsch_tb/uut/v
add wave -noupdate /kirsch_tb/uut/current_row
add wave -noupdate /kirsch_tb/uut/edge_present
add wave -noupdate /kirsch_tb/uut/sub
add wave -noupdate /kirsch_tb/uut/first_pass
add wave -noupdate -radix unsigned /kirsch_tb/uut/r0
add wave -noupdate -radix unsigned /kirsch_tb/uut/r1
add wave -noupdate -radix unsigned /kirsch_tb/uut/r2
add wave -noupdate -radix unsigned /kirsch_tb/uut/r3
add wave -noupdate -radix unsigned /kirsch_tb/uut/r4
add wave -noupdate -radix unsigned /kirsch_tb/uut/r5
add wave -noupdate -radix unsigned /kirsch_tb/uut/r6
add wave -noupdate -radix unsigned /kirsch_tb/uut/r7
add wave -noupdate /kirsch_tb/uut/f_max_edge
add wave -noupdate /kirsch_tb/uut/system_mode
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3195149 ns} 0} {{Cursor 2} {20654 ns} 0} {{Cursor 3} {41461 ns} 0} {{Cursor 4} {41625 ns} 0}
configure wave -namecolwidth 208
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {41281 ns} {41731 ns}
