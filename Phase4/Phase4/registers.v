module reg_32_bit (
	input wire clk,
	input wire clr,
	input wire enable,
	input wire [31:0] d,
	output reg [31:0] q //instead of also declaring in the 
); //module, so that reg can be updated directly in always block  

	// Initialize output to 0
	initial q = 32'h00000000;

	// Register behavior
	always @ (posedge clk) begin
		if (clr)
			q <= 32'h00000000;
		else if (enable)
			q <= d;
	end
//assign is not needed as q is already automatically driven by always block 
endmodule

module c_sign_extended_reg (
	input wire clk,
	input wire clr,
	input wire [31:0] d,
	output reg [31:0] q
);
	// Initialize output to 0
	initial q = 0;

	// Register behavior
	always @ (posedge clk) begin
		q <= d;
	end

endmodule

module pc_reg (
	input wire clk,				// clock signal
	input wire clr,
	input wire enable,				// write/enable signal
	//input wire pc_init_enable,
	input wire pc_increment,	// increment the pc
	input wire [31:0] pc_in,	// 32-bit input to register (BusMuxOut)
	//input wire [31:0] pc_init,
	output wire [31:0] pc_incremented,
	output reg [31:0] pc_out	// 32-bit output from register (BusMuxIn_PC)
);

	// Initialize output to 0
	initial pc_out = 32'h00000000;

	// Register behavior
	always @ (posedge clk) begin
		if (pc_increment)
			pc_out <= pc_out + 1;
		else if (clr)
			pc_out <= 32'h00000000;
		else if (enable)
			pc_out <= pc_in;
		//else if (pc_init_enable) 
			//pc_out <= pc_init;
	end
	assign pc_incremented = pc_out;

endmodule


