module mips_registers_testbench();

reg [31:0] write_data;
reg [4:0] read_reg_1, read_reg_2, write_reg;
reg RegWrite, clock;
	
wire [31:0] read_data_1,read_data_2;

mips_registers hatb(read_reg_1, read_reg_2, write_reg,read_data_1, read_data_2,write_data,RegWrite,clock);

initial begin

write_data = 32'b11111111111111111111111111111111;
read_reg_1= 5'b00000;
read_reg_2= 5'b00001;
write_reg= 5'b00011;
RegWrite=1'b0;
clock=1'b0;

#20

write_data = 32'b11111111111111111111111111111111;
read_reg_1= 5'b00000;
read_reg_2= 5'b00001;
write_reg= 5'b00011;
RegWrite=1'b0;
clock=1'b1;

#20

write_data = 32'b11111111111111111111111111111111;
read_reg_1= 5'b00000;
read_reg_2= 5'b00001;
write_reg= 5'b00011;
RegWrite=1'b0;
clock=1'b0;

#20

write_data = 32'b11111111111111111111111111111111;
read_reg_1= 5'b00000;
read_reg_2= 5'b00001;
write_reg= 5'b00011;
RegWrite=1'b1;
clock=1'b1;

#20

write_data = 32'b11111111111111111111111111111111;
read_reg_1= 5'b00011;
read_reg_2= 5'b00011;
write_reg= 5'b00010;
RegWrite=1'b0;
clock=1'b0;



end
 
 
initial
begin
$monitor("time = %2d, read_data_1=%32b, read_data_2=%32b, RegWrite=%1b, clock=%1b", $time,read_data_1,read_data_2,RegWrite,clock);
end
 
endmodule
