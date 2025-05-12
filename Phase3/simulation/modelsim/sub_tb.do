onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /sub_tb/pc_out
add wave -noupdate /sub_tb/zlo_out
add wave -noupdate /sub_tb/mdr_out
add wave -noupdate /sub_tb/mar_enable
add wave -noupdate /sub_tb/z_enable
add wave -noupdate /sub_tb/pc_enable
add wave -noupdate /sub_tb/mdr_enable
add wave -noupdate /sub_tb/read
add wave -noupdate /sub_tb/ir_enable
add wave -noupdate /sub_tb/y_enable
add wave -noupdate /sub_tb/pc_increment
add wave -noupdate /sub_tb/r3_enable
add wave -noupdate /sub_tb/r4_enable
add wave -noupdate /sub_tb/r7_enable
add wave -noupdate /sub_tb/r3_out
add wave -noupdate /sub_tb/r4_out
add wave -noupdate /sub_tb/r7_out
add wave -noupdate /sub_tb/clk
add wave -noupdate /sub_tb/op_code
add wave -noupdate /sub_tb/m_data_in
add wave -noupdate /sub_tb/present_state
add wave -noupdate /sub_tb/DUT/r3/q
add wave -noupdate /sub_tb/DUT/r4/q
add wave -noupdate /sub_tb/DUT/r7/q
add wave -noupdate /sub_tb/DUT/y/q
add wave -noupdate /sub_tb/DUT/alu/sub_op/a
add wave -noupdate /sub_tb/DUT/alu/sub_op/b
add wave -noupdate /sub_tb/DUT/alu/sub_op/cin
add wave -noupdate /sub_tb/DUT/alu/sub_op/sum
add wave -noupdate /sub_tb/DUT/alu/sub_op/cout
add wave -noupdate /sub_tb/DUT/alu/sub_op/neg_b
add wave -noupdate /sub_tb/DUT/zlo/q
add wave -noupdate /sub_tb/DUT/mdr/q
add wave -noupdate /sub_tb/DUT/pc/pc_out
add wave -noupdate /sub_tb/DUT/bus_mux/bus_mux_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {414403 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 270
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
WaveRestoreZoom {300 ns} {601330 ps}
