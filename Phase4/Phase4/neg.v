module logical_neg(input wire [31:0] b, output wire [31:0] result);

	assign result = ~b + 1;

endmodule