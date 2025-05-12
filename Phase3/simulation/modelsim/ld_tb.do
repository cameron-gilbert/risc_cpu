onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ld_tb/clk
add wave -noupdate /ld_tb/present_state
add wave -noupdate /ld_tb/pc_out
add wave -noupdate /ld_tb/zlo_out
add wave -noupdate /ld_tb/mdr_out
add wave -noupdate /ld_tb/mar_enable
add wave -noupdate /ld_tb/z_enable
add wave -noupdate /ld_tb/pc_enable
add wave -noupdate /ld_tb/mdr_enable
add wave -noupdate /ld_tb/read
add wave -noupdate /ld_tb/ir_enable
add wave -noupdate /ld_tb/y_enable
add wave -noupdate /ld_tb/pc_increment
add wave -noupdate /ld_tb/c_sign_extended_out
add wave -noupdate /ld_tb/r_in
add wave -noupdate /ld_tb/r_out
add wave -noupdate /ld_tb/gra
add wave -noupdate /ld_tb/grb
add wave -noupdate /ld_tb/ba_out
add wave -noupdate /ld_tb/pc_init_enable
add wave -noupdate /ld_tb/pc_init
add wave -noupdate /ld_tb/DUT/r2/enable
add wave -noupdate /ld_tb/DUT/r2/q
add wave -noupdate /ld_tb/DUT/r6/enable
add wave -noupdate /ld_tb/DUT/r6/q
add wave -noupdate /ld_tb/DUT/zlo/enable
add wave -noupdate /ld_tb/DUT/zlo/q
add wave -noupdate /ld_tb/DUT/mar/enable
add wave -noupdate /ld_tb/DUT/mar/q
add wave -noupdate /ld_tb/DUT/mdr/enable
add wave -noupdate /ld_tb/DUT/mdr/d
add wave -noupdate /ld_tb/DUT/mdr/q
add wave -noupdate /ld_tb/DUT/y/enable
add wave -noupdate /ld_tb/DUT/y/q
add wave -noupdate /ld_tb/DUT/ir/enable
add wave -noupdate /ld_tb/DUT/ir/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {93744 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 174
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
WaveRestoreZoom {543006 ps} {918789 ps}
