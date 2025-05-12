transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/registers.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/Datapath.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/and_32_bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/alu.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/add.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/mdr_mux_2_to_1.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/logical_or.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/bus_mux_32_to_1.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/sub.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/mul.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/div.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/shr.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/neg.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/not.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/shra.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/shl.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/rol.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/ror.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/select_and_encode.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/conff.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/inport_and_outport.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/control_unit.v}
vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/ram.v}

vlog -vlog01compat -work work +incdir+C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3 {C:/Users/cam/Downloads/374realfinal/risc_cpu/Phase3/control_unit_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  control_unit_tb

add wave *
view structure
view signals
run 1000 ns
