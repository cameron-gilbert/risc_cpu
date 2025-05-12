onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /shr_tb/pc_out
add wave -noupdate /shr_tb/zlo_out
add wave -noupdate /shr_tb/mdr_out
add wave -noupdate /shr_tb/mar_enable
add wave -noupdate /shr_tb/z_enable
add wave -noupdate /shr_tb/pc_enable
add wave -noupdate /shr_tb/mdr_enable
add wave -noupdate /shr_tb/read
add wave -noupdate /shr_tb/ir_enable
add wave -noupdate /shr_tb/y_enable
add wave -noupdate /shr_tb/pc_increment
add wave -noupdate /shr_tb/r3_enable
add wave -noupdate /shr_tb/r4_enable
add wave -noupdate /shr_tb/r7_enable
add wave -noupdate /shr_tb/r3_out
add wave -noupdate /shr_tb/r4_out
add wave -noupdate /shr_tb/r7_out
add wave -noupdate /shr_tb/clk
add wave -noupdate /shr_tb/clr
add wave -noupdate /shr_tb/op_code
add wave -noupdate /shr_tb/m_data_in
add wave -noupdate /shr_tb/present_state
add wave -noupdate /shr_tb/toggle
add wave -noupdate /shr_tb/DUT/r3/q
add wave -noupdate /shr_tb/DUT/r4/q
add wave -noupdate /shr_tb/DUT/r7/q
add wave -noupdate /shr_tb/DUT/y/q
add wave -noupdate /shr_tb/DUT/pc/pc_out
add wave -noupdate /shr_tb/DUT/alu/shr_op/a
add wave -noupdate /shr_tb/DUT/alu/shr_op/b
add wave -noupdate /shr_tb/DUT/alu/shr_op/result
add wave -noupdate /shr_tb/DUT/zlo/q
add wave -noupdate /shr_tb/DUT/bus_mux/bus_mux_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {55924 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 242
configure wave -valuecolwidth 39
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
WaveRestoreZoom {290721 ps} {603073 ps}
