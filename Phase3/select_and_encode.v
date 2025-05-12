module select_and_encode(
	// Outputs listed first
    output reg r0_enable, r1_enable, r2_enable, r3_enable,
    output reg r4_enable, r5_enable, r6_enable, r7_enable,
    output reg r8_enable, r9_enable, r10_enable, r11_enable,
    output reg r12_enable, r13_enable, r14_enable, r15_enable,
    output reg r0_out, r1_out, r2_out, r3_out,
    output reg r4_out, r5_out, r6_out, r7_out,
    output reg r8_out, r9_out, r10_out, r11_out,
    output reg r12_out, r13_out, r14_out, r15_out,
    output [31:0] c_data, // Control data output
	 output [4:0] op_code,
	 
	 // Inputs
    input gra, grb, grc,       // Register selection signals
    input rin, rout, baout,    // Control signals for enabling register I/O
    input [31:0] ir_data       // Instruction Register data

);
	//get register digit from instruction
	wire [3:0] ra = ir_data[26:23];
	wire [3:0] rb = ir_data[22:19];
	wire [3:0] rc = ir_data[18:15];
	
	//AND with control signal to select one 
	wire [3:0] reg_adr = (ra & {4{gra}}) | (rb & {4{grb}}) | (rc & {4{grc}});
	
	assign op_code = ir_data[31:27];
	assign c_data = {{13{ir_data[18]}},ir_data[18:0]};

	//decode which signal to produce 
	always @(*) begin
		r0_enable = 0; r1_enable = 0; r2_enable = 0; r3_enable = 0;
		r4_enable = 0; r5_enable = 0; r6_enable = 0; r7_enable = 0;
		r8_enable = 0; r9_enable = 0; r10_enable = 0; r11_enable = 0;
		r12_enable = 0; r13_enable = 0; r14_enable = 0; r15_enable = 0;
		r0_out = 0; r1_out = 0; r2_out = 0; r3_out = 0;
		r4_out = 0; r5_out = 0; r6_out = 0; r7_out = 0;
		r8_out = 0; r9_out = 0; r10_out = 0; r11_out = 0;
		r12_out = 0; r13_out = 0; r14_out = 0; r15_out = 0;
		
		case (reg_adr)
			4'b0000: begin 
				if (rin) r0_enable = 1; 
                if (rout || baout) r0_out = 1;
            end
            4'b0001: begin 
                if (rin) r1_enable = 1; 
                if (rout || baout) r1_out = 1;
            end
            4'b0010: begin 
                if (rin) r2_enable = 1; 
                if (rout || baout) r2_out = 1;
            end
            4'b0011: begin 
                if (rin) r3_enable = 1; 
                if (rout || baout) r3_out = 1;
            end
            4'b0100: begin 
                if (rin) r4_enable = 1; 
                if (rout || baout) r4_out = 1;
            end
            4'b0101: begin 
                if (rin) r5_enable = 1; 
                if (rout || baout) r5_out = 1;
            end
            4'b0110: begin 
                if (rin) r6_enable = 1; 
                if (rout || baout) r6_out = 1;
            end
            4'b0111: begin 
                if (rin) r7_enable = 1; 
                if (rout || baout) r7_out = 1;
            end
            4'b1000: begin 
                if (rin) r8_enable = 1; 
                if (rout || baout) r8_out = 1;
            end
            4'b1001: begin 
                if (rin) r9_enable = 1; 
                if (rout || baout) r9_out = 1;
            end
            4'b1010: begin 
                if (rin) r10_enable = 1; 
                if (rout || baout) r10_out = 1;
            end
            4'b1011: begin 
                if (rin) r11_enable = 1; 
                if (rout || baout) r11_out = 1;
            end
            4'b1100: begin 
                if (rin) r12_enable = 1; 
                if (rout || baout) r12_out = 1;
            end
            4'b1101: begin 
                if (rin) r13_enable = 1; 
                if (rout || baout) r13_out = 1;
            end
            4'b1110: begin 
                if (rin) r14_enable = 1; 
                if (rout || baout) r14_out = 1;
            end
            4'b1111: begin 
                if (rin) r15_enable = 1; 
                if (rout || baout) r15_out = 1;
            end
        endcase
    end
endmodule


