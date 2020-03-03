`define DELAY 20
module data_memory_testbench();

reg MemWrite,clock;

reg [31:0] address,write_data;

reg [2:0] data_type;

wire [31:0] ReadData;

data_memory hatb(address,write_data,MemWrite,ReadData,data_type,clock);

initial begin

address= 32'b00000000000000000000000000001010;
write_data = 32'b11111111111111111111111111111111;
MemWrite = 1'b0;
data_type = 2'b00;
clock = 1'b0;

#20
address= 32'b00000000000000000000000000001010;
write_data = 32'b11111111111111111111111111111111;
MemWrite = 1'b0;
data_type = 2'b01;
clock = 1'b1;

#20
address= 32'b00000000000000000000000000001010;
write_data = 32'b11111111111111111111111111111111;
MemWrite = 1'b0;
data_type = 2'b10;
clock = 1'b1;

#20
address= 32'b00000000000000000000000000001010;
write_data = 32'b11111111111111111111111111111111;
MemWrite = 1'b1;
data_type = 2'b11;
clock = 1'b0;

#20
address= 32'b00000000000000000000000000001010;
write_data = 32'b11111111111111111111111111111000;
MemWrite = 1'b1;
data_type = 2'b00;
clock = 1'b1;



end
 
 
initial
begin
$monitor("time = %2d, address=%32b write_data=%32b  MemWrite=%1b, data_type=%1b, clock=%1b, read_data=%32b", $time,address,write_data,MemWrite,data_type,clock,ReadData);
end
 
endmodule
