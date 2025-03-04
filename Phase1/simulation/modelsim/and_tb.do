onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /and_tb/pc_out
add wave -noupdate /and_tb/zlo_out
add wave -noupdate /and_tb/zhi_out
add wave -noupdate /and_tb/mdr_out
add wave -noupdate /and_tb/mar_enable
add wave -noupdate /and_tb/z_enable
add wave -noupdate /and_tb/pc_enable
add wave -noupdate /and_tb/mdr_enable
add wave -noupdate /and_tb/read
add wave -noupdate /and_tb/ir_enable
add wave -noupdate /and_tb/y_enable
add wave -noupdate /and_tb/pc_increment
add wave -noupdate /and_tb/r3_enable
add wave -noupdate /and_tb/r4_enable
add wave -noupdate /and_tb/r7_enable
add wave -noupdate /and_tb/r3_out
add wave -noupdate /and_tb/r7_out
add wave -noupdate /and_tb/clk
add wave -noupdate /and_tb/clr
add wave -noupdate /and_tb/op_code
add wave -noupdate -radix binary /and_tb/m_data_in
add wave -noupdate /and_tb/present_state
add wave -noupdate /and_tb/toggle
add wave -noupdate /and_tb/DUT/alu/and_op/a
add wave -noupdate /and_tb/DUT/alu/and_op/b
add wave -noupdate /and_tb/DUT/alu/and_op/result
add wave -noupdate /and_tb/DUT/pc/pc_in
add wave -noupdate /and_tb/DUT/bus_mux/bus_mux_out
add wave -noupdate /and_tb/DUT/zlo/q
add wave -noupdate /and_tb/DUT/r3/q
add wave -noupdate /and_tb/DUT/r4/q
add wave -noupdate /and_tb/DUT/r7/q
add wave -noupdate /and_tb/DUT/y/q
add wave -noupdate /and_tb/DUT/ir/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {495843 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 229
configure wave -valuecolwidth 233
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
WaveRestoreZoom {416518 ps} {609657 ps}
