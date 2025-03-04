onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /div_tb/pc_out
add wave -noupdate /div_tb/zlo_out
add wave -noupdate /div_tb/zhi_out
add wave -noupdate /div_tb/mdr_out
add wave -noupdate /div_tb/mar_enable
add wave -noupdate /div_tb/z_enable
add wave -noupdate /div_tb/lo_enable
add wave -noupdate /div_tb/hi_enable
add wave -noupdate /div_tb/pc_enable
add wave -noupdate /div_tb/mdr_enable
add wave -noupdate /div_tb/read
add wave -noupdate /div_tb/ir_enable
add wave -noupdate /div_tb/y_enable
add wave -noupdate /div_tb/pc_increment
add wave -noupdate /div_tb/r2_enable
add wave -noupdate /div_tb/r4_enable
add wave -noupdate /div_tb/r6_enable
add wave -noupdate /div_tb/r2_out
add wave -noupdate /div_tb/r4_out
add wave -noupdate /div_tb/r6_out
add wave -noupdate /div_tb/clk
add wave -noupdate /div_tb/clr
add wave -noupdate /div_tb/op_code
add wave -noupdate /div_tb/m_data_in
add wave -noupdate /div_tb/present_state
add wave -noupdate /div_tb/DUT/r2/q
add wave -noupdate /div_tb/DUT/r6/q
add wave -noupdate /div_tb/DUT/alu/div_op/a
add wave -noupdate /div_tb/DUT/alu/div_op/b
add wave -noupdate /div_tb/DUT/alu/div_op/result
add wave -noupdate /div_tb/DUT/alu/div_op/quotient
add wave -noupdate /div_tb/DUT/alu/div_op/remainder
add wave -noupdate /div_tb/DUT/lo/q
add wave -noupdate /div_tb/DUT/hi/q
add wave -noupdate /div_tb/DUT/bus_mux/bus_mux_out
add wave -noupdate /div_tb/DUT/pc/pc_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {396251 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 231
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
WaveRestoreZoom {308348 ps} {511486 ps}
