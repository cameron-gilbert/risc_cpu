onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /shl_tb/pc_out
add wave -noupdate /shl_tb/zlo_out
add wave -noupdate /shl_tb/mdr_out
add wave -noupdate /shl_tb/mar_enable
add wave -noupdate /shl_tb/z_enable
add wave -noupdate /shl_tb/pc_enable
add wave -noupdate /shl_tb/mdr_enable
add wave -noupdate /shl_tb/read
add wave -noupdate /shl_tb/ir_enable
add wave -noupdate /shl_tb/y_enable
add wave -noupdate /shl_tb/pc_increment
add wave -noupdate /shl_tb/r3_enable
add wave -noupdate /shl_tb/r4_enable
add wave -noupdate /shl_tb/r7_enable
add wave -noupdate /shl_tb/r3_out
add wave -noupdate /shl_tb/r4_out
add wave -noupdate /shl_tb/r7_out
add wave -noupdate /shl_tb/clk
add wave -noupdate /shl_tb/clr
add wave -noupdate /shl_tb/op_code
add wave -noupdate /shl_tb/m_data_in
add wave -noupdate /shl_tb/present_state
add wave -noupdate /shl_tb/toggle
add wave -noupdate /shl_tb/DUT/r3/q
add wave -noupdate /shl_tb/DUT/r4/q
add wave -noupdate /shl_tb/DUT/r7/q
add wave -noupdate /shl_tb/DUT/y/q
add wave -noupdate /shl_tb/DUT/pc/pc_out
add wave -noupdate /shl_tb/DUT/mdr/q
add wave -noupdate /shl_tb/DUT/bus_mux/bus_mux_out
add wave -noupdate /shl_tb/DUT/alu/shl_op/a
add wave -noupdate /shl_tb/DUT/alu/shl_op/b
add wave -noupdate /shl_tb/DUT/alu/shl_op/result
add wave -noupdate /shl_tb/DUT/zlo/q
add wave -noupdate /shl_tb/DUT/ir/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {515283 ps} 0}
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
WaveRestoreZoom {269892 ps} {604702 ps}
