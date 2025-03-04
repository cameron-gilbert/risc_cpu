module Datapath ( //enable means register will take in data from bus
    input pc_out, 
    input zlo_out,
    input zhi_out,
    input mdr_out, 
	 input r0_out,
	 input r2_out,
	 input r3_out,
	 input r4_out,
	 input r5_out,
	 input r6_out,
	 input r7_out, 
    input mar_enable, 
    input z_enable, 
	 input lo_enable,
	 input hi_enable,
    input pc_enable, 
    input mdr_enable, 
	 input ir_enable, 
	 input y_enable, 
	 input pc_increment, 
    input read, 
    input [4:0] op_code, // same as the AND
	 input r0_enable,
	 input r2_enable,
    input r3_enable,
	 input r4_enable,
	 input r5_enable,
	 input r6_enable,
	 input r7_enable,
    input clr, 
    input clk,
    input [31:0] m_data_in
);

wire [31:0] bus; // this register holds the data on bus need to display?
wire [31:0] mdr_connection;
wire [63:0] alu_out;

// will be used once control unit added 
////wire r0_enable = 0;
//wire r1_enable = 0;
////wire r2_enable = 0;
//// r3_enable is controlled by testbench 
//// same with r4
////wire r5_enable = 0;
////wire r6_enable = 0;
//// r7_enable is controlled by testbench
//wire r8_enable = 0;
//wire r9_enable = 0;
//wire r10_enable = 0;
//wire r11_enable = 0;
//wire r12_enable = 0;
//wire r13_enable = 0;
//wire r14_enable = 0;
//wire r15_enable = 0;


// Register output data wires (connect to the bus)
wire [31:0] r0_data;
wire [31:0] r1_data;
wire [31:0] r2_data;
wire [31:0] r3_data;
wire [31:0] r4_data;
wire [31:0] r5_data;
wire [31:0] r6_data;
wire [31:0] r7_data;
wire [31:0] r8_data;
wire [31:0] r9_data;
wire [31:0] r10_data;
wire [31:0] r11_data;
wire [31:0] r12_data;
wire [31:0] r13_data;
wire [31:0] r14_data;
wire [31:0] r15_data;
wire [31:0] y_data;
wire [31:0] pc_data;
wire [31:0] hi_data;
wire [31:0] lo_data;
wire [31:0] zhi_data;
wire [31:0] mdr_data;
wire [31:0] zlo_data;


// Instantiate register modules
reg_32_bit r0(clk, clr, r0_enable, bus, r0_data);
reg_32_bit r1(clk, clr, r1_enable, bus, r1_data);
reg_32_bit r2(clk, clr, r2_enable, bus, r2_data);
reg_32_bit r3(clk, clr, r3_enable, bus, r3_data);
reg_32_bit r4(clk, clr, r4_enable, bus, r4_data);
reg_32_bit r5(clk, clr, r5_enable, bus, r5_data);
reg_32_bit r6(clk, clr, r6_enable, bus, r6_data);
reg_32_bit r7(clk, clr, r7_enable, bus, r7_data);
reg_32_bit r8(clk, clr, r8_enable, bus, r8_data);
reg_32_bit r9(clk, clr, r9_enable, bus, r9_data);
reg_32_bit r10(clk, clr, r10_enable, bus, r10_data);
reg_32_bit r11(clk, clr, r11_enable, bus, r11_data);
reg_32_bit r12(clk, clr, r12_enable, bus, r12_data);
reg_32_bit r13(clk, clr, r13_enable, bus, r13_data);
reg_32_bit r14(clk, clr, r14_enable, bus, r14_data);
reg_32_bit r15(clk, clr, r15_enable, bus, r15_data);

reg_32_bit y(clk, clr, y_enable, bus, y_data);
reg_32_bit hi(clk, clr, hi_enable, bus, hi_data);// placement for data after being in the z register 
reg_32_bit lo(clk, clr, lo_enable, bus, lo_data);
reg_32_bit zlo(clk, clr, z_enable, alu_out[31:0], zlo_data); // the alu result always goes into the z reg
reg_32_bit zhi(clk, clr, z_enable, alu_out[63:32], zhi_data); // bits are split into the high and low portions
reg_32_bit ir(clk, clr, ir_enable, bus, ir_data);
reg_32_bit mar(clk, clr, mar_enable, bus, mar_data);
reg_32_bit mdr(clk, clr, mdr_enable, mdr_connection, mdr_data);
pc_reg pc(clk, clr, pc_enable, pc_increment, bus, pc_data);


//Instantiate MDR Mux
mdr_mux_2_to_1 mdr_mux(
    .out(mdr_connection),
    .read(read),
    .from_bus(bus),
    .from_mem_chip(m_data_in)
);



// Instantiate ALU
alu alu(
    .c(alu_out), //gets sent to the z reg 
    .op_code(op_code),
    .a(y_data), //comes from the data stored in y reg 
    .b(bus), //direclty from bus 
    .clk(clk)
);

 //Instantiate Bus Mux
bus_mux_32_to_1 bus_mux(
    .bus_mux_out(bus), //data coming from the bus to registers 
    // Register output control signals
    .r0_out(r0_out), .r1_out(r1_out), .r2_out(r2_out), .r3_out(r3_out),
    .r4_out(r4_out), .r5_out(r5_out), .r6_out(r6_out), .r7_out(r7_out),
    .r8_out(r8_out), .r9_out(r9_out), .r10_out(r10_out), .r11_out(r11_out),
    .r12_out(r12_out), .r13_out(r13_out), .r14_out(r14_out), .r15_out(r15_out),
    .hi_out(hi_out), .lo_out(lo_out), .zhi_out(zhi_out), .zlo_out(zlo_out),
    .pc_out(pc_out), .mdr_out(mdr_out),

    // Register data inputs
    .bus_mux_in_r0(r0_data), .bus_mux_in_r1(r1_data), .bus_mux_in_r2(r2_data), .bus_mux_in_r3(r3_data),
    .bus_mux_in_r4(r4_data), .bus_mux_in_r5(r5_data), .bus_mux_in_r6(r6_data), .bus_mux_in_r7(r7_data),
    .bus_mux_in_r8(r8_data), .bus_mux_in_r9(r9_data), .bus_mux_in_r10(r10_data), .bus_mux_in_r11(r11_data),
    .bus_mux_in_r12(r12_data), .bus_mux_in_r13(r13_data), .bus_mux_in_r14(r14_data), .bus_mux_in_r15(r15_data),
    .bus_mux_in_hi(hi_data), .bus_mux_in_lo(lo_data), .bus_mux_in_zhi(zhi_data), .bus_mux_in_zlo(zlo_data),
    .bus_mux_in_pc(pc_data), .bus_mux_in_mdr(mdr_data)
);

endmodule






