onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mul_tb/pc_out
add wave -noupdate /mul_tb/zlo_out
add wave -noupdate /mul_tb/zhi_out
add wave -noupdate /mul_tb/mdr_out
add wave -noupdate /mul_tb/mar_enable
add wave -noupdate /mul_tb/z_enable
add wave -noupdate /mul_tb/lo_enable
add wave -noupdate /mul_tb/hi_enable
add wave -noupdate /mul_tb/pc_enable
add wave -noupdate /mul_tb/mdr_enable
add wave -noupdate /mul_tb/read
add wave -noupdate /mul_tb/ir_enable
add wave -noupdate /mul_tb/y_enable
add wave -noupdate /mul_tb/pc_increment
add wave -noupdate /mul_tb/r2_enable
add wave -noupdate /mul_tb/r4_enable
add wave -noupdate /mul_tb/r6_enable
add wave -noupdate /mul_tb/r2_out
add wave -noupdate /mul_tb/r4_out
add wave -noupdate /mul_tb/r6_out
add wave -noupdate /mul_tb/clk
add wave -noupdate /mul_tb/op_code
add wave -noupdate /mul_tb/m_data_in
add wave -noupdate /mul_tb/present_state
add wave -noupdate /mul_tb/DUT/r2/q
add wave -noupdate /mul_tb/DUT/r6/q
add wave -noupdate /mul_tb/DUT/hi/q
add wave -noupdate /mul_tb/DUT/lo/q
add wave -noupdate /mul_tb/DUT/alu/mul_op/m
add wave -noupdate /mul_tb/DUT/alu/mul_op/q
add wave -noupdate /mul_tb/DUT/alu/mul_op/out
add wave -noupdate /mul_tb/DUT/alu/mul_op/sum
add wave -noupdate /mul_tb/DUT/alu/mul_op/neg_m
add wave -noupdate /mul_tb/DUT/bus_mux/bus_mux_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {24474 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 227
configure wave -valuecolwidth 38
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
WaveRestoreZoom {298614 ps} {474234 ps}
