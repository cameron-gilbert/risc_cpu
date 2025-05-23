`timescale 1ns/10ps

module st_tb; 	
reg pc_out; 
reg zlo_out;
reg zhi_out;
reg hi_out;
reg lo_out;
reg outport_enable;
reg inport_enable;
reg inport_out;
reg mdr_out; 
reg mar_enable; 
reg z_enable;
reg lo_enable;
reg hi_enable;
reg pc_enable; 
reg mdr_enable; 
reg read;
reg ir_enable; 
reg y_enable;
reg pc_increment; 
reg c_sign_extended_out;
reg clk; 
reg clr;
reg con_enable;
reg ram_write;
reg r_in;
reg r_out;
reg gra;
reg grb;
reg grc;
reg ba_out;
reg pc_init_enable;
reg [31:0] pc_init;

// Instantiate the DUT
Datapath DUT(
	.pc_out(pc_out), 
	.zlo_out(zlo_out), 
	.zhi_out(zhi_out),
   .hi_out(hi_out),
   .lo_out(lo_out),
	.mdr_out(mdr_out), 
	.mar_enable(mar_enable), 
	.z_enable(z_enable), 
	.pc_enable(pc_enable), 
	.mdr_enable(mdr_enable), 
	.read(read), 
	.ir_enable(ir_enable), 
	.y_enable(y_enable), 
	.pc_increment(pc_increment),
	.lo_enable(lo_enable),
	.hi_enable(hi_enable),
   .outport_enable(outport_enable),
   .inport_enable(inport_enable),
   .inport_out(inport_out),
	.c_sign_extended_out(c_sign_extended_out),
	.clr(clr), 
	.clk(clk),
   .con_enable(con_enable),
   .ram_write(ram_write),
   .r_in(r_in),
   .r_out(r_out),
   .gra(gra),
   .grb(grb),
   .grc(grc),
   .ba_out(ba_out),
	.pc_init_enable(pc_init_enable),
	.pc_init(pc_init)
);

// FSM signals
parameter start = 5'b00000; 
parameter T0_ld1 = 5'b00001; 
parameter T1_ld1 = 5'b00010; 
parameter T2_ld1 = 5'b00011; 
parameter T21_ld1 = 5'b11010;
parameter T22_ld1 = 5'b11011;
parameter T3_ld1 = 5'b00100; 
parameter T4_ld1 = 5'b00101; 
parameter T5_ld1 = 5'b00110; 
parameter T6_ld1 = 5'b00111; 
parameter T7_ld1 = 5'b01000;
parameter T0_ld2 = 5'b01001;
parameter T1_ld2 = 5'b01010;
parameter T2_ld2 = 5'b01011;
parameter T3_ld2 = 5'b01100;
parameter T4_ld2 = 5'b01101;
parameter T5_ld2 = 5'b01110;
parameter T6_ld2 = 5'b01111;
parameter T7_ld2 = 5'b10000;
reg	[4:0] present_state = start;

// Initialize the clock signals
initial begin
	clk = 0;
	clr = 0;
	forever #10 clk = ~ clk;
end

// FSM changes on positive edge of clock every two clock cycles
reg toggle = 0;

// Toggle the counter on every clock cycle
always @(posedge clk)
begin
    toggle <= ~toggle;
end

always @(posedge clk)
begin
    if (toggle == 1)  // Check if toggle is set to change the state
    begin
        case (present_state)
            start       : present_state = T0_ld1;
            T0_ld1  		: present_state = T1_ld1;
            T1_ld1  		: present_state = T2_ld1;
            T2_ld1  		: present_state = T21_ld1;
				T21_ld1		  	: present_state = T22_ld1;
				T22_ld1		  	: present_state = T3_ld1;
            T3_ld1  		: present_state = T4_ld1;
            T4_ld1  		: present_state = T5_ld1;
            T5_ld1  		: present_state = T6_ld1;
            T6_ld1      : present_state = T7_ld1;
				T7_ld1      : present_state = T0_ld2;
			T0_ld2		  	: present_state = T1_ld2;
			T1_ld2		  	: present_state = T2_ld2;
			T2_ld2		  	: present_state = T3_ld2;
			T3_ld2		  	: present_state = T4_ld2;
			T4_ld2		  	: present_state = T5_ld2;
			T5_ld2		  	: present_state = T6_ld2;
			T6_ld2		  	: present_state = T7_ld2;
        endcase
    end
end

always @(present_state)
begin
	case (present_state)
		// present_state: 0 
		// Set all signals to 0
		start: begin	
			pc_out <= 0; pc_init <= 32'h00000006; pc_init_enable <= 1;  zlo_out <= 0;
			pc_enable <= 0; mdr_enable <= 0; mar_enable <= 0;  zhi_out <= 0; lo_enable <= 0;
			ir_enable <= 0; y_enable <= 0; pc_increment <= 0;    hi_enable <= 0; mdr_out <= 0;
			read <= 0;  z_enable <= 0; con_enable <= 0; ram_write <= 0; 
			r_in <= 0; r_out <= 0; gra <= 0; grb <= 0; grc <= 0; ba_out <= 0;
			c_sign_extended_out <= 0; hi_out <= 0; lo_out <= 0; 
         outport_enable <= 0; inport_enable <= 0; inport_out <= 0;
			#20 pc_init_enable <= 0;
		end
		
		// present_state: 1
		T0_ld1: begin
			pc_out <= 1; mar_enable <= 1; pc_increment <= 1;  //Testing st instruction with rb = 0
			#20 mar_enable <= 0; pc_increment <= 0; z_enable <= 1;
			#20 pc_out <= 0; z_enable <= 0;
		end

		// present_state: 2
		T1_ld1: begin
			read <= 1; mdr_enable <= 1; pc_enable <= 1; zlo_out <= 1;
			#20 read <= 0; mdr_enable <= 0; pc_enable <= 0; zlo_out <= 0;
		end

		// present_state: 3
		T2_ld1: begin
			mdr_out <= 1; ir_enable <= 1; 
			#20 mdr_out<= 0; ir_enable <= 0;
		end
		
		// present_state: b2 load reg content from mem and into right reg also increment so ready for next instruction
		T21_ld1: begin
			pc_out <= 1; mar_enable <= 1; pc_increment <= 1;  
			#20 mar_enable <= 0; pc_increment <= 0; z_enable <= 1;
			#20 pc_out <= 0; z_enable <= 0; 
		end
		
		T22_ld1: begin
			read <= 1; mdr_enable <= 1;  pc_enable <= 1; zlo_out <= 1;
			#20 read <= 0; mdr_enable <= 0; mdr_out <= 1; gra <= 1; r_in <= 1; pc_enable <= 0; zlo_out <= 0;
			#20 mdr_out <= 0; gra <= 0; r_in <= 0;
		end // a register now has its data 

		// present_state: 4 we know b is empty so must be 0 extended
		T3_ld1: begin	
			grb <= 1; ba_out <= 1; y_enable <= 1;
			#20 grb <= 0; ba_out <= 0; y_enable <= 0;
		end

		// present_state: 5
		T4_ld1: begin	
			c_sign_extended_out <= 1; z_enable <= 1;
			#20 c_sign_extended_out <= 0; z_enable <= 0;
		end //memory address to be stored in is now in z

		// present_state: 6
		T5_ld1: begin
			zlo_out <= 1; mar_enable <= 1;
			#20 zlo_out <= 0; mar_enable <= 0; gra <= 1; r_out <= 1;  mdr_enable <= 1; 
			#20 mdr_enable <= 0; gra <= 0; r_out <= 0; 
		end //proper address is now in mar

		// present_state: 7
		T6_ld1: begin // register value now stored in mdr to write 
			ram_write <= 1;  
			#20 ram_write <= 0;
		end
		
		//Now bring into register to show success
		T7_ld1: begin
			read <= 1; mdr_enable <= 1; 
			#20 read <= 0; mdr_enable <= 0; y_enable <= 1; mdr_out <= 1;
			#20 y_enable <= 0; mdr_out <= 0;
		end
		
		// present_state: 9 Testing instruction st 0x34r3, r3
		T0_ld2: begin
			pc_out <= 1; mar_enable <= 1; pc_increment <= 1; 
			#20 mar_enable <= 0; pc_increment <= 0; z_enable <= 1;
			#20 pc_out <= 0; z_enable <= 0;
		end

		// present_state: a
		T1_ld2: begin
			read <= 1; mdr_enable <= 1; pc_enable <= 1; zlo_out <= 1;
			#20 read <= 0; mdr_enable <= 0; pc_enable <= 0; zlo_out <= 0;
		end

		// present_state: b
		T2_ld2: begin
			mdr_out <= 1; ir_enable <= 1; 
			#20 mdr_out<= 0; ir_enable <= 0;
		end

		// present_state: c now we know that b has a value
		T3_ld2: begin	
			grb <= 1; ba_out <= 1; y_enable <= 1;
			#20 grb <= 0; ba_out <= 0; y_enable <= 0;
		end

		// present_state: d
		T4_ld2: begin	
			c_sign_extended_out <= 1;  z_enable <= 1;
			#20 c_sign_extended_out <= 0; z_enable <= 0;
		end //memory address to be stored at is now in z

		// present_state: e
		T5_ld2: begin
			zlo_out <= 1; mar_enable <= 1;
			#20 zlo_out <= 0; mar_enable <= 0; gra <= 1; r_out <= 1;  mdr_enable <= 1; 
			#20 mdr_enable <= 0; gra <= 0; r_out <= 0; 
		end // now it is in mar

		// present_state: f
		T6_ld2: begin
			ram_write <= 1;  
			#20 ram_write <= 0;
		end
		
		//Now bring into register to show success
		T7_ld2: begin
			read <= 1; mdr_enable <= 1; 
			#20 read <= 0; mdr_enable <= 0; y_enable <= 1; mdr_out <= 1;
			#20 y_enable <= 0; mdr_out <= 0;
		end
	endcase
end
endmodule