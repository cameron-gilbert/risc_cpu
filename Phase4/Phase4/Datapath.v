module Datapath (
    input reset,
    input stop,
    input clk,
    input [31:0] inport_in,
    output [31:0] outport_data,
	 output [7:0] display_data
);
wire clr;
wire ir_clr;
wire y_clr;
wire [31:0] bus; // this register holds the data on bus need to display?
wire [31:0] mdr_connection;
wire [63:0] alu_out;
wire [4:0] op_code; //from select and encode, where it is retrieved from ir bits
wire [31:0] m_data_in; //internal wire between ram and mdr
wire con_out;
wire ram_write;

// Register enable signals
wire r0_enable;
wire r1_enable;
wire r2_enable;
wire r3_enable;
wire r4_enable;
wire r5_enable;
wire r6_enable;
wire r7_enable;
wire r8_enable; //for jal
wire r8_enable_select;
wire r8_in;
wire r9_enable;
wire r10_enable;
wire r11_enable;
wire r12_enable;
wire r13_enable;
wire r14_enable;
wire r15_enable;
wire y_enable;
wire hi_enable;
wire lo_enable;
wire z_enable;
wire pc_enable;
wire mar_enable;
wire mdr_enable;
wire ir_enable;

// Register output flags
wire r0_out;
wire r1_out;
wire r2_out;
wire r3_out;
wire r4_out;
wire r5_out;
wire r6_out;
wire r7_out;
wire r8_out;
wire r9_out;
wire r10_out;
wire r11_out;
wire r12_out;
wire r13_out;
wire r14_out;
wire r15_out;
wire pc_out;
wire y_out;
wire hi_out;
wire lo_out;
wire zhi_out;
wire zlo_out;
wire mar_out;
wire mdr_out;
wire inport_out;
wire c_sign_extended_out;
wire ba_out;
wire gra;
wire grb;
wire grc;
wire r_rin;
wire r_out;

// Register output data wires (connect to the bus)
wire [31:0] r0_data;
wire [31:0] r0_content;
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
wire [31:0] pc_incremented;
wire [31:0] ir_data;
wire [31:0] c_data;
wire [31:0] hi_data;
wire [31:0] lo_data;
wire [31:0] zhi_data;
wire [31:0] mdr_data;
wire [31:0] mar_data;
wire [31:0] zlo_data;
wire [31:0] z_input;
wire [31:0] inport_data;

// Instantiate register modules
reg_32_bit r0(clk, clr, r0_enable, bus, r0_content);
assign r0_data = r0_content & {32{~ba_out}}; //mux for new r0 where output is either value or 0's based on ra

reg_32_bit r1(clk, clr, r1_enable, bus, r1_data);
reg_32_bit r2(clk, clr, r2_enable, bus, r2_data);
reg_32_bit r3(clk, clr, r3_enable, bus, r3_data);
reg_32_bit r4(clk, clr, r4_enable, bus, r4_data);
reg_32_bit r5(clk, clr, r5_enable, bus, r5_data);
reg_32_bit r6(clk, clr, r6_enable, bus, r6_data);
reg_32_bit r7(clk, clr, r7_enable, bus, r7_data);
reg_32_bit r8(clk, clr, r8_in, bus, r8_data);
assign r8_in = r8_enable | r8_enable_select; // for jal where simulated signal must be used in order to store return address
reg_32_bit r9(clk, clr, r9_enable, bus, r9_data);
reg_32_bit r10(clk, clr, r10_enable, bus, r10_data);
reg_32_bit r11(clk, clr, r11_enable, bus, r11_data);
reg_32_bit r12(clk, clr, r12_enable, bus, r12_data);
reg_32_bit r13(clk, clr, r13_enable, bus, r13_data);
reg_32_bit r14(clk, clr, r14_enable, bus, r14_data);
reg_32_bit r15(clk, clr, r15_enable, bus, r15_data);

reg_32_bit y(clk, y_clr, y_enable, bus, y_data);
reg_32_bit hi(clk, clr, hi_enable, bus, hi_data);// placement for data after being in the z register 
reg_32_bit lo(clk, clr, lo_enable, bus, lo_data);

assign z_input = (pc_out) ? pc_incremented : alu_out[31:0]; //mux for z register to either take pc when incrementing or alu out
reg_32_bit zlo(clk, clr, z_enable, z_input, zlo_data); // the alu result always goes into the z reg
reg_32_bit zhi(clk, clr, z_enable, alu_out[63:32], zhi_data); // bits are split into the high and low portions
reg_32_bit ir(clk, ir_clr, ir_enable, bus, ir_data);
reg_32_bit mar(clk, clr, mar_enable, bus, mar_data);
reg_32_bit mdr(clk, clr, mdr_enable, mdr_connection, mdr_data);

pc_reg pc(clk, clr, pc_enable, pc_increment, bus, pc_incremented, pc_data);


select_and_encode select_mux(
	.r0_enable(r0_enable), .r1_enable(r1_enable), .r2_enable(r2_enable), .r3_enable(r3_enable),
	.r4_enable(r4_enable), .r5_enable(r5_enable), .r6_enable(r6_enable), .r7_enable(r7_enable),
	.r8_enable(r8_enable_select), .r9_enable(r9_enable), .r10_enable(r10_enable), .r11_enable(r11_enable),
	.r12_enable(r12_enable), .r13_enable(r13_enable), .r14_enable(r14_enable), .r15_enable(r15_enable),
	.r0_out(r0_out), .r1_out(r1_out), .r2_out(r2_out), .r3_out(r3_out),
	.r4_out(r4_out), .r5_out(r5_out), .r6_out(r6_out), .r7_out(r7_out),
	.r8_out(r8_out), .r9_out(r9_out), .r10_out(r10_out), .r11_out(r11_out),
	.r12_out(r12_out), .r13_out(r13_out), .r14_out(r14_out), .r15_out(r15_out),
	.c_data(c_data),
	.op_code(op_code),
	.gra(gra),
	.grb(grb),
	.grc(grc),
	.rin(r_in),
	.rout(r_out),
	.baout(ba_out),
	.ir_data(ir_data)
);


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
    .pc_out(pc_out), .mdr_out(mdr_out), .c_sign_extended_out(c_sign_extended_out), .inport_out(inport_out),

    // Register data inputs
    .bus_mux_in_r0(r0_data), .bus_mux_in_r1(r1_data), .bus_mux_in_r2(r2_data), .bus_mux_in_r3(r3_data),
    .bus_mux_in_r4(r4_data), .bus_mux_in_r5(r5_data), .bus_mux_in_r6(r6_data), .bus_mux_in_r7(r7_data),
    .bus_mux_in_r8(r8_data), .bus_mux_in_r9(r9_data), .bus_mux_in_r10(r10_data), .bus_mux_in_r11(r11_data),
    .bus_mux_in_r12(r12_data), .bus_mux_in_r13(r13_data), .bus_mux_in_r14(r14_data), .bus_mux_in_r15(r15_data),
    .bus_mux_in_hi(hi_data), .bus_mux_in_lo(lo_data), .bus_mux_in_zhi(zhi_data), .bus_mux_in_zlo(zlo_data),
    .bus_mux_in_pc(pc_data), .bus_mux_in_mdr(mdr_data), .bus_mux_in_c(c_data), .bus_mux_in_inport(inport_data)
);

ram ram_memory(
    .clk(clk),
    .addr(mar_data),
    .data_in(mdr_data),
    .write_enable(ram_write),
    .data_out(m_data_in)
);

// TODO: Instantiate CON FF Logic
conff conff(
    .bus(bus),
    .c2(ir_data[22:19]),
    .con_enable(con_enable),
	 .clk(clk),
    .condition(con_out)
);

// Instantiate I/O ports
inport inport(clk, clr, inport_init, inport_data);
outport outport(clk, clr, outport_enable, bus, outport_data);

// Instantiate the control unit
control_unit CU (
    .clk(clk),
    .reset(reset),
    .stop(stop),
    .con_ff(con_out),
    .ir(ir_data),

    .inport_out(inport_out),
    .read(read),
    .ram_write(ram_write),

    .hi_enable(hi_enable),
    .lo_enable(lo_enable),
    .con_enable(con_enable),
    .pc_enable(pc_enable),
    .ir_enable(ir_enable),
    .y_enable(y_enable),
    .z_enable(z_enable),
    .mar_enable(mar_enable),
    .mdr_enable(mdr_enable),
    .outport_enable(outport_enable),
    .c_sign_extended_out(c_sign_extended_out),
    .ba_out(ba_out),

    .gra(gra),
    .grb(grb),
    .grc(grc),
    .r_in(r_in),
    .r_out(r_out),
    .hi_out(hi_out),
    .lo_out(lo_out),
    .zhi_out(zhi_out),
    .zlo_out(zlo_out),
    .mdr_out(mdr_out),
    .pc_out(pc_out),

    .pc_increment(pc_increment),
    .y_clr(y_clr),
    .ir_clr(ir_clr),
    .clr(clr),
    .r8_enable(r8_enable)
);


Seven_Seg_Display_Out display(
    .outputt(display_data[7:0]),
    .clk(clk),
    .data(inport_in[3:0])
);


endmodule






