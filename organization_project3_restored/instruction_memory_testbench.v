`define DELAY 20

module instruction_memory_testbench();


wire [31:0]control;
reg [31:0] pc;

instruction_memory im1(control,pc);

initial begin
	pc = 32'H00000000;
	#20
	pc = 32'H00000001;
	#20
	pc = 32'H00000002;
	#20
	pc = 32'H00000003;
end

initial
begin
$monitor("time = %2d,out=%32b,PC=%32B", $time,control,pc);
end




endmodule

