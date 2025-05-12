onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ldi_tb/clk
add wave -noupdate /ldi_tb/present_state
add wave -noupdate /ldi_tb/pc_out
add wave -noupdate /ldi_tb/zlo_out
add wave -noupdate /ldi_tb/mdr_out
add wave -noupdate /ldi_tb/mar_enable
add wave -noupdate /ldi_tb/z_enable
add wave -noupdate /ldi_tb/pc_enable
add wave -noupdate /ldi_tb/mdr_enable
add wave -noupdate /ldi_tb/read
add wave -noupdate /ldi_tb/ir_enable
add wave -noupdate /ldi_tb/y_enable
add wave -noupdate /ldi_tb/pc_increment
add wave -noupdate /ldi_tb/c_sign_extended_out
add wave -noupdate /ldi_tb/r_in
add wave -noupdate /ldi_tb/r_out
add wave -noupdate /ldi_tb/gra
add wave -noupdate /ldi_tb/grb
add wave -noupdate /ldi_tb/ba_out
add wave -noupdate /ldi_tb/pc_init_enable
add wave -noupdate /ldi_tb/pc_init
add wave -noupdate /ldi_tb/toggle
add wave -noupdate /ldi_tb/DUT/r2/enable
add wave -noupdate /ldi_tb/DUT/r2/q
add wave -noupdate /ldi_tb/DUT/r4/enable
add wave -noupdate /ldi_tb/DUT/r4/q
add wave -noupdate /ldi_tb/DUT/r6/enable
add wave -noupdate /ldi_tb/DUT/r6/q
add wave -noupdate /ldi_tb/DUT/zlo/enable
add wave -noupdate /ldi_tb/DUT/zlo/q
add wave -noupdate /ldi_tb/DUT/mar/enable
add wave -noupdate /ldi_tb/DUT/mar/q
add wave -noupdate /ldi_tb/DUT/mdr/enable
add wave -noupdate /ldi_tb/DUT/mdr/d
add wave -noupdate /ldi_tb/DUT/mdr/q
add wave -noupdate /ldi_tb/DUT/ir/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {516149 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 172
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
WaveRestoreZoom {310146 ps} {675974 ps}
