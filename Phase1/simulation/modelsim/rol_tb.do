onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /rol_tb/pc_out
add wave -noupdate /rol_tb/zlo_out
add wave -noupdate /rol_tb/mdr_out
add wave -noupdate /rol_tb/mar_enable
add wave -noupdate /rol_tb/z_enable
add wave -noupdate /rol_tb/pc_enable
add wave -noupdate /rol_tb/mdr_enable
add wave -noupdate /rol_tb/read
add wave -noupdate /rol_tb/ir_enable
add wave -noupdate /rol_tb/y_enable
add wave -noupdate /rol_tb/pc_increment
add wave -noupdate /rol_tb/r3_enable
add wave -noupdate /rol_tb/r4_enable
add wave -noupdate /rol_tb/r7_enable
add wave -noupdate /rol_tb/r3_out
add wave -noupdate /rol_tb/r4_out
add wave -noupdate /rol_tb/r7_out
add wave -noupdate /rol_tb/clk
add wave -noupdate /rol_tb/clr
add wave -noupdate /rol_tb/op_code
add wave -noupdate /rol_tb/m_data_in
add wave -noupdate /rol_tb/present_state
add wave -noupdate /rol_tb/toggle
add wave -noupdate /rol_tb/DUT/r4/q
add wave -noupdate /rol_tb/DUT/r3/q
add wave -noupdate /rol_tb/DUT/r7/q
add wave -noupdate /rol_tb/DUT/y/q
add wave -noupdate /rol_tb/DUT/ir/q
add wave -noupdate /rol_tb/DUT/mar/q
add wave -noupdate /rol_tb/DUT/mdr/q
add wave -noupdate /rol_tb/DUT/pc/pc_out
add wave -noupdate /rol_tb/DUT/alu/rol_op/a
add wave -noupdate /rol_tb/DUT/alu/rol_op/b
add wave -noupdate /rol_tb/DUT/alu/rol_op/result
add wave -noupdate /rol_tb/DUT/bus_mux/bus_mux_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {437774 ps} 0}
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
WaveRestoreZoom {271696 ps} {617279 ps}
