module shr (input wire [31:0] a, b, output wire [31:0] result);

	assign result = a << b;

endmodule