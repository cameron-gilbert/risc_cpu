onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ror_tb/pc_out
add wave -noupdate /ror_tb/zlo_out
add wave -noupdate /ror_tb/mdr_out
add wave -noupdate /ror_tb/mar_enable
add wave -noupdate /ror_tb/z_enable
add wave -noupdate /ror_tb/pc_enable
add wave -noupdate /ror_tb/mdr_enable
add wave -noupdate /ror_tb/read
add wave -noupdate /ror_tb/ir_enable
add wave -noupdate /ror_tb/y_enable
add wave -noupdate /ror_tb/pc_increment
add wave -noupdate /ror_tb/r3_enable
add wave -noupdate /ror_tb/r4_enable
add wave -noupdate /ror_tb/r7_enable
add wave -noupdate /ror_tb/r3_out
add wave -noupdate /ror_tb/r4_out
add wave -noupdate /ror_tb/r7_out
add wave -noupdate /ror_tb/clk
add wave -noupdate /ror_tb/clr
add wave -noupdate /ror_tb/op_code
add wave -noupdate /ror_tb/m_data_in
add wave -noupdate /ror_tb/present_state
add wave -noupdate /ror_tb/toggle
add wave -noupdate /ror_tb/DUT/r3/q
add wave -noupdate /ror_tb/DUT/r4/q
add wave -noupdate /ror_tb/DUT/r7/q
add wave -noupdate /ror_tb/DUT/y/q
add wave -noupdate /ror_tb/DUT/pc/pc_out
add wave -noupdate /ror_tb/DUT/ir/q
add wave -noupdate /ror_tb/DUT/mdr/q
add wave -noupdate /ror_tb/DUT/alu/ror_op/a
add wave -noupdate /ror_tb/DUT/alu/ror_op/b
add wave -noupdate /ror_tb/DUT/alu/ror_op/result
add wave -noupdate /ror_tb/DUT/zlo/q
add wave -noupdate /ror_tb/DUT/bus_mux/bus_mux_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {321563 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {281931 ps} {616741 ps}
