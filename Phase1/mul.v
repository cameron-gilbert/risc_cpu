module mul (input signed [31:0] m, q, output [63:0] out);

    reg [2:0] bit_pairs [15:0]; // stores 3 bit booth encoded pairs from multiplier
    reg signed [32:0] hold [15:0]; //stores intermidiate partial products
    reg signed [63:0] shifted_hold [15:0]; //stores shifted partial products
    reg signed [63:0] sum = 0;// accumulated sum over time
   
    wire signed [32:0] neg_m;
    assign neg_m = -m;

    integer i;
    always@(m or q or neg_m) begin //creates bit pairs from q for booth encoding
        bit_pairs[0] = {q[1], q[0], 1'b0}; //initial
        for(i = 1; i < 16; i = i + 1) begin //
            bit_pairs[i] = {q[2*i+1], q[2*i], q[2*i-1]}; //step 1: gather the pairs
        end

        for(i = 0; i < 16; i = i + 1) begin
            case (bit_pairs[i]) //transfer into correct values
                3'b001, 3'b010 :  hold[i] = {m[31], m}; //add a normal m here it is critical to ensure that extendnd
                3'b011 : hold[i] = {m, 1'b0}; //shift m by 1 and add
                3'b100 : hold[i] = {neg_m[31:0], 1'b0}; //neg m shifted once
                3'b101, 3'b110 : hold[i] = neg_m; //neg m
                default: hold[i] = 0;
            endcase

            shifted_hold[i] = {{31{hold[i][32]}}, hold[i]} << (2 * i); //based on the index of the recording the value is shifted
        end

        sum = shifted_hold[0]; // get first val
        for(i = 1; i < 16; i = i + 1) begin
            sum = sum + shifted_hold[i]; // sum the rest
        end
    end
    assign out = sum;
endmodule