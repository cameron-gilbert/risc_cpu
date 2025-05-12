module div (
    input signed [31:0] a, // dividend
    input signed [31:0] b, // divisor
    output reg [63:0] result // {remainder, quotient}
);

    reg [31:0] quotient, remainder, divisor; 
    reg [31:0] temp_remainder; 
    reg sign_quotient, sign_remainder; // store original signs
    integer i;

    always @(*) begin
        // initialize variables
        quotient = 0;
        remainder = 0;
        divisor = b;
		  
        // handle sign correction for signed division
        sign_quotient = a[31] ^ b[31]; // quotient is negative if one operand is negative
        sign_remainder = a[31]; // remainder follows the sign of the dividend

        // if a is negative, take 2's complement
        if (a[31] == 1) 
            temp_remainder = -a; 
        else 
            temp_remainder = a; // start with dividend

        // if b is negative, take 2's complement
        if (b[31] == 1) 
            divisor = -b; 

        // non-restoring division
        for (i = 31; i >= 0; i = i - 1) begin
            // shift a and q left
            remainder = remainder << 1; 
            remainder[0] = temp_remainder[31]; // bring to dividend
            temp_remainder = temp_remainder << 1; 

            // subtract if A>=0, otherwise add
            if (remainder[31] == 0) 
                remainder = remainder - divisor;
            else 
                remainder = remainder + divisor;

            // if A>= 0 q is 1 otherwise q is 0
            if (remainder[31] == 0) 
                quotient = (quotient << 1) | 1; 
            else
                quotient = (quotient << 1) | 0; 
        end

        // correct if remainder is negative
        if (remainder[31] == 1) 
            remainder = remainder + divisor; 

        // apply sign correction
        if (sign_quotient) 
            quotient = -quotient; // correct the sign of the quotient

        if (sign_remainder)
            remainder = -remainder; // correct the sign of the remainder

        // results
        result[31:0] = quotient;
        result[63:32] = remainder;
    end

endmodule
