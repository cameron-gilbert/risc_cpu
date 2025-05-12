onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /branch_tb/clk
add wave -noupdate /branch_tb/present_state
add wave -noupdate /branch_tb/pc_out
add wave -noupdate /branch_tb/zlo_out
add wave -noupdate /branch_tb/mdr_out
add wave -noupdate /branch_tb/mar_enable
add wave -noupdate /branch_tb/z_enable
add wave -noupdate /branch_tb/pc_enable
add wave -noupdate /branch_tb/mdr_enable
add wave -noupdate /branch_tb/read
add wave -noupdate /branch_tb/ir_enable
add wave -noupdate /branch_tb/y_enable
add wave -noupdate /branch_tb/pc_increment
add wave -noupdate /branch_tb/c_sign_extended_out
add wave -noupdate /branch_tb/r_in
add wave -noupdate /branch_tb/r_out
add wave -noupdate /branch_tb/gra
add wave -noupdate /branch_tb/grb
add wave -noupdate /branch_tb/ba_out
add wave -noupdate /branch_tb/pc_init
add wave -noupdate /branch_tb/DUT/r1/enable
add wave -noupdate /branch_tb/DUT/r1/q
add wave -noupdate /branch_tb/DUT/y/q
add wave -noupdate /branch_tb/DUT/zlo/q
add wave -noupdate /branch_tb/DUT/ir/q
add wave -noupdate /branch_tb/DUT/mar/q
add wave -noupdate /branch_tb/DUT/mdr/q
add wave -noupdate /branch_tb/DUT/pc/pc_in
add wave -noupdate /branch_tb/DUT/pc/pc_out
add wave -noupdate /branch_tb/DUT/conff/bus
add wave -noupdate /branch_tb/DUT/conff/con_enable
add wave -noupdate /branch_tb/DUT/conff/condition
add wave -noupdate /branch_tb/DUT/conff/equals0
add wave -noupdate /branch_tb/DUT/conff/not0
add wave -noupdate /branch_tb/DUT/conff/greatereq0
add wave -noupdate /branch_tb/DUT/conff/less0
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {375116 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 223
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {308445 ps}
