`timescale 1ns/10ps

module neg_tb;
    reg pc_out;
    reg zlo_out;
    reg zhi_out;
    reg mdr_out;
	 reg r0_out;
	 reg r2_out;
	 reg r3_out;
	 reg r4_out;
	 reg r5_out;
	 reg r6_out;
	 reg r7_out; 
    reg mar_enable; 
    reg z_enable;
	 reg lo_enable;
	 reg hi_enable;
    reg pc_enable; 
    reg mdr_enable; 
	 reg ir_enable;
	 reg y_enable;
	 reg pc_increment; 
    reg read;
    reg [4:0] op_code; // same as the AND
	 reg r0_enable;
	 reg r2_enable;
    reg r3_enable;
	 reg r4_enable;
	 reg r5_enable;
	 reg r6_enable;
	 reg r7_enable;
    reg clr;
    reg clk;
    reg [31:0] m_data_in;

    // FSM states
   parameter Default = 4'b0000; 
	parameter reg_load1a = 4'b0001; 
	parameter reg_load1b = 4'b0010; 
	parameter reg_load2a = 4'b0011; 
	parameter reg_load2b = 4'b0100; 
	parameter T0 = 4'b0101; 
	parameter T1 = 4'b0110; 
	parameter T2 = 4'b0111; 
	parameter T3 = 4'b1000; 
	parameter T4 = 4'b1001; 
	parameter T5 = 4'b1010; 
	parameter T6 = 4'b1011; 

    reg [3:0] present_state = Default;

    // Opcode for NEG operation
    parameter neg_opcode = 5'b10001;

    // Instantiate the Datapath
	 
	
    Datapath DUT (
        .pc_out(pc_out),
        .zlo_out(zlo_out),
        .zhi_out(zhi_out),
        .mdr_out(mdr_out),
        .r0_out(r0_out),
        .r5_out(r5_out),
        .mar_enable(mar_enable),
        .z_enable(z_enable),
        .pc_enable(pc_enable),
        .mdr_enable(mdr_enable),
        .ir_enable(ir_enable),
        .y_enable(y_enable),
        .pc_increment(pc_increment),
        .read(read),
        .op_code(op_code),
        .r0_enable(r0_enable),
        .r5_enable(r5_enable),
        .clr(clr),
        .clk(clk),
        .m_data_in(m_data_in)
    );

    // Clock setup
    initial begin
        clk = 0;
		  clr = 0;
        forever #10 clk = ~clk;
    end
	 
	 
	 reg toggle = 0;

// Toggle the counter on every clock cycle
always @(posedge clk)
begin
    toggle <= ~toggle;
end

always @(posedge clk)
begin
	if (toggle == 1) 
	begin
			case (present_state)
				Default     : present_state = reg_load1a;
				reg_load1a  : present_state = reg_load1b;
				reg_load1b  : present_state = reg_load2a;
				reg_load2a  : present_state = reg_load2b;
				reg_load2b  : present_state = T0;
				T0          : present_state = T1;
				T1          : present_state = T2;
				T2          : present_state = T3;
				T3          : present_state = T4;
				T4          : present_state = T5;
		endcase
	end
end

    always @(present_state) begin
        case (present_state)
            Default: begin
                pc_out <= 0; zlo_out <= 0; mdr_out <= 0; zhi_out <= 0;
                r0_out <= 0; r5_out <= 0;
                pc_enable <= 0; mdr_enable <= 0; mar_enable <= 0;
                ir_enable <= 0; y_enable <= 0; pc_increment <= 0;
                read <= 0; op_code <= 0; z_enable <= 0;
                r0_enable <= 0; r5_enable <= 0;
                m_data_in <= 32'h00000000;
            end
            
				
		// present_state: 1
		// Load 0x00000022 into MDR
		reg_load1a: begin
			m_data_in <= 32'h00000022;  //simulating loading value from memory
			read <= 1; mdr_enable <= 1;	//done by setting read = 1 so that mux
			#20 read <= 0; mdr_enable <= 0; // usues mem along with setting enable for mdr to take in data
		end

		// present_state: 2
		// Load MDR into R5
		reg_load1b: begin
			mdr_out <= 1; r5_enable <= 1;		
			#20 mdr_out <= 0; r5_enable <= 0;
		end

		// present_state: 3
		// Load 0x00000024 into MDR
		reg_load2a: begin
			m_data_in <= 32'h00000024;
			read <= 1; mdr_enable <= 1;
			#20 read <= 0; mdr_enable <= 0;
		end
		
		// present_state: 4
		// Load MDR into R0
		reg_load2b: begin	
			mdr_out <= 1; r0_enable <= 1;
			#20 mdr_out <= 0; r0_enable <= 0;
		end
	
				
            // Fetch Instruction
            T0: begin
                pc_out <= 1; mar_enable <= 1; pc_increment <= 1;
                #20 pc_out <= 0; mar_enable <= 0; pc_increment <= 0;
            end
            
            // Load instruction from memory to MDR
            T1: begin
                m_data_in <= 32'h88028000; 
                read <= 1; mdr_enable <= 1; zlo_out <= 1;
                #20 read <= 0; mdr_enable <= 0; zlo_out <= 0;
            end

            // Load MDR into IR
            T2: begin
                mdr_out <= 1; ir_enable <= 1;
                #20 mdr_out <= 0; ir_enable <= 0;
            end

            // Perform Negation: R0 -> NEG -> Z
            T3: begin
                r0_out <= 1; op_code <= neg_opcode; z_enable <= 1;
                #20 r0_out <= 0; z_enable <= 0;
            end

            // Store result in R5
            T4: begin
                zlo_out <= 1; r5_enable <= 1;
                #20 zlo_out <= 0; r5_enable <= 0;
            end
        endcase
    end
endmodule
