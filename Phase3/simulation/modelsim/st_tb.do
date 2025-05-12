onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /st_tb/clk
add wave -noupdate /st_tb/present_state
add wave -noupdate /st_tb/pc_out
add wave -noupdate /st_tb/zlo_out
add wave -noupdate /st_tb/mdr_out
add wave -noupdate /st_tb/mar_enable
add wave -noupdate /st_tb/z_enable
add wave -noupdate /st_tb/pc_enable
add wave -noupdate /st_tb/mdr_enable
add wave -noupdate /st_tb/read
add wave -noupdate /st_tb/ir_enable
add wave -noupdate /st_tb/y_enable
add wave -noupdate /st_tb/pc_increment
add wave -noupdate /st_tb/c_sign_extended_out
add wave -noupdate /st_tb/ram_write
add wave -noupdate /st_tb/r_in
add wave -noupdate /st_tb/r_out
add wave -noupdate /st_tb/gra
add wave -noupdate /st_tb/grb
add wave -noupdate /st_tb/ba_out
add wave -noupdate /st_tb/pc_init
add wave -noupdate /st_tb/DUT/r3/enable
add wave -noupdate /st_tb/DUT/r3/q
add wave -noupdate /st_tb/DUT/y/enable
add wave -noupdate /st_tb/DUT/y/q
add wave -noupdate /st_tb/DUT/zlo/enable
add wave -noupdate /st_tb/DUT/zlo/q
add wave -noupdate /st_tb/DUT/ir/enable
add wave -noupdate /st_tb/DUT/ir/q
add wave -noupdate /st_tb/DUT/mar/enable
add wave -noupdate /st_tb/DUT/mar/q
add wave -noupdate /st_tb/DUT/mdr/enable
add wave -noupdate /st_tb/DUT/mdr/q
add wave -noupdate /st_tb/DUT/ram_memory/addr
add wave -noupdate /st_tb/DUT/ram_memory/data_in
add wave -noupdate /st_tb/DUT/ram_memory/data_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {787933 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 240
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
WaveRestoreZoom {419298 ps} {921978 ps}
