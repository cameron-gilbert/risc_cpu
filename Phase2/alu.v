module alu (
	output reg [63:0] c, 		// 64-bit result
	input wire [4:0] op_code, 	// 5-bit opcode
	input wire [31:0] a,		// 32-bit operand A (from y)
	input wire [31:0] b,		// 32-bit operand B (from bus)
	input wire clk
);

// Intermediate wires for various operations
wire [31:0] and_result;
wire [31:0] or_result;
wire [31:0] add_result;	
wire [0:0] add_carry;
wire [31:0] sub_result;
wire [63:0] mul_result;
wire [63:0] div_result;
wire [31:0] shr_result;
wire [31:0] shra_result;
wire [31:0] shl_result;
wire [31:0] ror_result;
wire [31:0] rol_result;
wire [31:0] neg_result;
wire [31:0] not_result;

// Instantiation of modules for operations
and_32_bit and_op(.a(a), .b(b), .result(and_result)); // the and module is always producing answer 
logical_or or_op(.a(a), .b(b), .result(or_result));
add add_op(.a(a), .b(b), .cin(0), .sum(add_result), .cout(add_carry));
sub sub_op(.a(a), .b(b), .cin(0), .sum(sub_result), .cout(cout));
mul mul_op(.m(a), .q(b), .out(mul_result));
div div_op(.a(a), .b(b), .result(div_result));
shr shr_op(.a(a), .b(b), .result(shr_result));
shra shra_op(.a(a), .b(b), .result(shra_result));
shl shl_op(.a(a), .b(b), .result(shl_result));
ror ror_op(.a(a), .b(b), .result(ror_result));
rol rol_op(.a(a), .b(b), .result(rol_result));
logical_neg neg_op(.b(b), .result(neg_result));
logical_not not_op(.b(b), .result(not_result));

// Opcodes for operations
parameter ld_opcode = 5'b00000; 
parameter ldi_opcode = 5'b00001; 
parameter st_opcode = 5'b00010; 
parameter add_opcode = 5'b00011; 
parameter sub_opcode = 5'b00100; 
parameter and_opcode = 5'b00101; 
parameter or_opcode = 5'b00110; 
parameter ror_opcode = 5'b00111; 
parameter rol_opcode = 5'b01000; 
parameter shr_opcode = 5'b01001; 
parameter shra_opcode = 5'b01010;
parameter shl_opcode  = 5'b01011; 
parameter addi_opcode = 5'b01100; 
parameter andi_opcode = 5'b01101; 
parameter ori_opcode = 5'b01110; 
parameter div_opcode= 5'b01111; 
parameter mul_opcode = 5'b10000; 
parameter neg_opcode = 5'b10001; 
parameter not_opcode = 5'b10010;

// Select the internal result based on the opcode
always @(*) begin
	case (op_code) 

		and_opcode: begin //so when connected it will assign c, the result of the alu to the and result
			c[31:0] = and_result;
			c[63:32] = 32'b0;
		end

		or_opcode: begin
			c[31:0] = or_result;
			c[63:32] = 32'b0;
		end

		add_opcode: begin
			c[31:0] = add_result;
			c[63:32] = 32'b0;
		end

		sub_opcode: begin
			c[31:0] = sub_result;
			c[63:32] = 32'b0;
		end

		mul_opcode: begin
			c[31:0] = mul_result[31:0];
			c[63:32] = mul_result[63:32];
		end

		div_opcode: begin
			c[31:0] = div_result[31:0];
			c[63:32] = div_result[63:32];
		end

		shr_opcode: begin
			c[31:0] = shr_result;
			c[63:32] = 32'b0;
		end

		shra_opcode: begin
			c[31:0] = shra_result;
			c[63:32] = 32'b0;
		end

		shl_opcode: begin
			c[31:0] = shl_result;
			c[63:32] = 32'b0;
		end

		ror_opcode: begin
			c[31:0] = ror_result;
			c[63:32] = 32'b0;
		end

		rol_opcode: begin
			c[31:0] = rol_result;
			c[63:32] = 32'b0;
		end

		neg_opcode: begin
			c[31:0] = neg_result;
			c[63:32] = 32'b0;
		end

		not_opcode: begin
			c[31:0] = not_result;
			c[63:32] = 32'b0;
		end
	endcase
end

endmodule