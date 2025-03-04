module logical_or(
    input wire [31:0] a,  // First 32-bit operand
    input wire [31:0] b,  // Second 32-bit operand
    output wire [31:0] result // Output: 32-bit AND operation result
);

    assign result = a | b; // Perform bitwise AND operation

endmodule
