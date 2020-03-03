module mips_registers(read_reg_1, read_reg_2, write_reg,read_data_1, read_data_2,write_data,RegWrite, clock);
//( read_data_1, read_data_2, write_data, read_reg_1, read_reg_2, write_reg, signal_reg_write, clk );

	output [31:0] read_data_1,read_data_2;
	input [31:0] write_data;
	input [4:0] read_reg_1, read_reg_2, write_reg;
	input RegWrite, clock;
	
	reg [31:0] registers [31:0];
		
	//this module use behavioral verilog
	//for register & data memory part, use files
	//register.mem or register.txt (file extension does not important)
	
	//for memory file read & write using followings
	
	initial begin
	$readmemb("registers.mem",registers);
	
	end
	
	
	//--- continuos assignment --- 
	assign read_data_1 = registers[read_reg_1];
	assign read_data_2 = registers[read_reg_2];
	
	
	//--- non-blocking assignment ---
	
	always @(posedge clock ) begin
		
	if(RegWrite)
		registers[write_reg] = write_data;
		$writememb("registers.mem", registers);
		
	
	end
	
endmodule