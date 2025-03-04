onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /add_tb/pc_out
add wave -noupdate /add_tb/zlo_out
add wave -noupdate /add_tb/mdr_out
add wave -noupdate /add_tb/mar_enable
add wave -noupdate /add_tb/z_enable
add wave -noupdate /add_tb/pc_enable
add wave -noupdate /add_tb/mdr_enable
add wave -noupdate /add_tb/read
add wave -noupdate /add_tb/ir_enable
add wave -noupdate /add_tb/y_enable
add wave -noupdate /add_tb/pc_increment
add wave -noupdate /add_tb/r3_enable
add wave -noupdate /add_tb/r4_enable
add wave -noupdate /add_tb/r7_enable
add wave -noupdate /add_tb/r3_out
add wave -noupdate /add_tb/r4_out
add wave -noupdate /add_tb/r7_out
add wave -noupdate /add_tb/clk
add wave -noupdate /add_tb/op_code
add wave -noupdate /add_tb/m_data_in
add wave -noupdate /add_tb/present_state
add wave -noupdate /add_tb/DUT/r3/q
add wave -noupdate /add_tb/DUT/r4/q
add wave -noupdate /add_tb/DUT/r7/q
add wave -noupdate /add_tb/DUT/y/q
add wave -noupdate /add_tb/DUT/alu/add_op/a
add wave -noupdate /add_tb/DUT/alu/add_op/b
add wave -noupdate /add_tb/DUT/alu/add_op/cin
add wave -noupdate /add_tb/DUT/alu/add_op/sum
add wave -noupdate /add_tb/DUT/alu/add_op/cout
add wave -noupdate /add_tb/DUT/alu/add_op/carry
add wave -noupdate /add_tb/DUT/zlo/q
add wave -noupdate /add_tb/DUT/pc/pc_out
add wave -noupdate /add_tb/DUT/mdr/q
add wave -noupdate /add_tb/DUT/bus_mux/bus_mux_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {768142 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 214
configure wave -valuecolwidth 124
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
WaveRestoreZoom {250099 ps} {540889 ps}
