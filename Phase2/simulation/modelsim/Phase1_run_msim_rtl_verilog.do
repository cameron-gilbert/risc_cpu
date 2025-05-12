transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/registers.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/Datapath.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/and_32_bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/alu.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/add.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/mdr_mux_2_to_1.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/logical_or.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/bus_mux_32_to_1.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/sub.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/mul.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/div.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/shr.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/neg.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/not.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/shra.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/shl.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/rol.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/ror.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/select_and_encode.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/conff.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/inport_and_outport.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/ram.v}

vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase2/st_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  st_tb

add wave *
view structure
view signals
run 900 ns
