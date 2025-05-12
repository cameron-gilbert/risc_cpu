module logical_not(input wire [31:0] b, output wire [31:0] result);

	assign result = ~b;

endmodule