onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /not_tb/pc_out
add wave -noupdate /not_tb/zlo_out
add wave -noupdate /not_tb/zhi_out
add wave -noupdate /not_tb/mdr_out
add wave -noupdate /not_tb/r0_out
add wave -noupdate /not_tb/r5_out
add wave -noupdate /not_tb/mar_enable
add wave -noupdate /not_tb/z_enable
add wave -noupdate /not_tb/pc_enable
add wave -noupdate /not_tb/mdr_enable
add wave -noupdate /not_tb/ir_enable
add wave -noupdate /not_tb/y_enable
add wave -noupdate /not_tb/pc_increment
add wave -noupdate /not_tb/read
add wave -noupdate /not_tb/op_code
add wave -noupdate /not_tb/r0_enable
add wave -noupdate /not_tb/r5_enable
add wave -noupdate /not_tb/clr
add wave -noupdate /not_tb/clk
add wave -noupdate /not_tb/m_data_in
add wave -noupdate /not_tb/present_state
add wave -noupdate /not_tb/toggle
add wave -noupdate /not_tb/DUT/y/q
add wave -noupdate /not_tb/DUT/ir/q
add wave -noupdate /not_tb/DUT/mar/q
add wave -noupdate /not_tb/DUT/mdr/q
add wave -noupdate /not_tb/DUT/pc/pc_out
add wave -noupdate /not_tb/DUT/mdr_mux/out
add wave -noupdate /not_tb/DUT/mdr_mux/read
add wave -noupdate /not_tb/DUT/mdr_mux/from_bus
add wave -noupdate /not_tb/DUT/mdr_mux/from_mem_chip
add wave -noupdate /not_tb/DUT/r0/q
add wave -noupdate /not_tb/DUT/r5/q
add wave -noupdate /not_tb/DUT/alu/not_op/b
add wave -noupdate /not_tb/DUT/alu/not_op/result
add wave -noupdate /not_tb/DUT/bus_mux/bus_mux_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {381468 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 307
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
WaveRestoreZoom {232116 ps} {487518 ps}
