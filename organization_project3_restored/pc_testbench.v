module pc_testbench();

reg clock;
wire [31:0]out;

pc pc1(clock,out);



initial clock = 0;

always
begin
	#10 clock=~clock;
	
	if(out==32'b00000000000000000000000000001000)
	begin
		$finish;
	end
end



initial
begin
$monitor("time = %2d, clock=%1b, out=%32b", $time, clock,out);
end




endmodule