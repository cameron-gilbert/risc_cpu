
module add (
    input [31:0] a,
    input [31:0] b,
    input cin,
    output reg [31:0] sum,
    output reg cout
);

    reg [32:0] carry; // store intermediate carries
    integer i; //loop

    always @(*) begin
        carry[0] = cin; // Initialize carry-in
        for (i = 0; i < 32; i = i + 1) begin
            sum[i] = a[i] ^ b[i] ^ carry[i]; // sum = A XOR B XOR carry
            carry[i+1] = (a[i] & b[i]) | (carry[i] & (a[i] ^ b[i])); // carry propagation
        end
        cout = carry[32];
    end

endmodule
