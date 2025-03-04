module bus_mux_32_to_1 (
    // 32 bit output from a selected register
    output reg [31:0] bus_mux_out,


    // Control signals to enable output from registers
    input r0_out, r1_out, r2_out, r3_out, r4_out, r5_out, r6_out, r7_out,
    input r8_out, r9_out, r10_out, r11_out, r12_out, r13_out, r14_out, r15_out,
    input hi_out, lo_out, zhi_out, zlo_out, pc_out, mdr_out,

    // Register data inputs
    input [31:0] bus_mux_in_r0, bus_mux_in_r1, bus_mux_in_r2, bus_mux_in_r3,
    input [31:0] bus_mux_in_r4, bus_mux_in_r5, bus_mux_in_r6, bus_mux_in_r7,
    input [31:0] bus_mux_in_r8, bus_mux_in_r9, bus_mux_in_r10, bus_mux_in_r11,
    input [31:0] bus_mux_in_r12, bus_mux_in_r13, bus_mux_in_r14, bus_mux_in_r15,
    input [31:0] bus_mux_in_hi, bus_mux_in_lo, bus_mux_in_zhi, bus_mux_in_zlo,
    input [31:0] bus_mux_in_pc, bus_mux_in_mdr
);

always @ (*) begin
	bus_mux_out = 32'h00000000; // Default value to prevent floating bus

	if (r0_out)        bus_mux_out = bus_mux_in_r0;
	else if (r1_out)   bus_mux_out = bus_mux_in_r1;
	else if (r2_out)   bus_mux_out = bus_mux_in_r2;
	else if (r3_out)   bus_mux_out = bus_mux_in_r3;
	else if (r4_out)   bus_mux_out = bus_mux_in_r4;
	else if (r5_out)   bus_mux_out = bus_mux_in_r5;
	else if (r6_out)   bus_mux_out = bus_mux_in_r6;
	else if (r7_out)   bus_mux_out = bus_mux_in_r7;
	else if (r8_out)   bus_mux_out = bus_mux_in_r8;
	else if (r9_out)   bus_mux_out = bus_mux_in_r9;
	else if (r10_out)  bus_mux_out = bus_mux_in_r10;
	else if (r11_out)  bus_mux_out = bus_mux_in_r11;
	else if (r12_out)  bus_mux_out = bus_mux_in_r12;
	else if (r13_out)  bus_mux_out = bus_mux_in_r13;
	else if (r14_out)  bus_mux_out = bus_mux_in_r14;
	else if (r15_out)  bus_mux_out = bus_mux_in_r15;
	else if (hi_out)   bus_mux_out = bus_mux_in_hi;
	else if (lo_out)   bus_mux_out = bus_mux_in_lo;
	else if (zhi_out)  bus_mux_out = bus_mux_in_zhi;
	else if (zlo_out)  bus_mux_out = bus_mux_in_zlo;
	else if (pc_out)   bus_mux_out = bus_mux_in_pc;
	else if (mdr_out)  bus_mux_out = bus_mux_in_mdr;
	end

endmodule