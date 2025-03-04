onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /or_tb/pc_out
add wave -noupdate /or_tb/zlo_out
add wave -noupdate /or_tb/zhi_out
add wave -noupdate /or_tb/mdr_out
add wave -noupdate /or_tb/mar_enable
add wave -noupdate /or_tb/z_enable
add wave -noupdate /or_tb/pc_enable
add wave -noupdate /or_tb/mdr_enable
add wave -noupdate /or_tb/read
add wave -noupdate /or_tb/ir_enable
add wave -noupdate /or_tb/y_enable
add wave -noupdate /or_tb/pc_increment
add wave -noupdate /or_tb/r3_enable
add wave -noupdate /or_tb/r4_enable
add wave -noupdate /or_tb/r7_enable
add wave -noupdate /or_tb/r3_out
add wave -noupdate /or_tb/r7_out
add wave -noupdate /or_tb/clk
add wave -noupdate /or_tb/clr
add wave -noupdate /or_tb/op_code
add wave -noupdate /or_tb/m_data_in
add wave -noupdate /or_tb/present_state
add wave -noupdate /or_tb/toggle
add wave -noupdate /or_tb/DUT/alu/or_op/a
add wave -noupdate /or_tb/DUT/alu/or_op/b
add wave -noupdate /or_tb/DUT/alu/or_op/result
add wave -noupdate /or_tb/DUT/r3/q
add wave -noupdate /or_tb/DUT/r4/q
add wave -noupdate /or_tb/DUT/r7/q
add wave -noupdate /or_tb/DUT/y/q
add wave -noupdate /or_tb/DUT/zlo/q
add wave -noupdate /or_tb/DUT/ir/q
add wave -noupdate /or_tb/DUT/pc/pc_in
add wave -noupdate /or_tb/DUT/bus_mux/bus_mux_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {379315 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 215
configure wave -valuecolwidth 81
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
WaveRestoreZoom {299429 ps} {634595 ps}
