module mips32_testbench();



reg clock;
reg [2:0] Aluctr;
wire [31:0] instruction_out;
wire [31:0] pc_out;

wire mux_extend,memWrite;

wire [4:0] register_read_1,register_read_2;

wire [31:0]aluResult,read_data_from_rs,read_data_from_rt,read_data_from_mem;


mips32 mips(clock,instruction_out,pc_out,RegWrite,mux_extend,memWrite,aluResult,register_read_1,register_read_2,read_data_from_rs,read_data_from_rt,read_data_from_mem);

initial clock = 0;


always
begin
	#10 clock=~clock;
	
	if(pc_out==32'b00000000000000000000000000001000)
	begin
		$finish;
	end
end



initial
begin
$monitor("time = %2d, clock=%1b, PC=%32b, Instruction=%32b, RegWrite=%1b, Mux_extend=%1b, MemWrite=%1b,aluresult=%32b,rt=%6b, rs=%6b, rsData=%32b, rtData=%32b memData=%32b", $time, clock,pc_out,instruction_out,RegWrite,mux_extend,memWrite,aluResult,register_read_1,register_read_2,read_data_from_rs,read_data_from_rt,read_data_from_mem);
end



//you can give here, like below this
//instruction_set = 32'b00000010000100011001000000100000; #10; // rs=$16 rt=$17 rd=$18 s2=s0+s1 		add  s2 s0 s1
//or you can take instructions from file
//readmemb("filename", instruction_set);

//Continue for all instruction types 
//Must be least 9*2=18 control lines (There must be at least 2 tests for each instruction)
//You can change the inside of the register.mem file as desired.

//end of the running, output files must be created/updated (register file & data file)




endmodule