`define DELAY 20
module signextend_16_testbench();
reg [15:0]a;
wire [31:0]res;

signextend_16 hatb(a, res);

initial begin
a = 16'b1010101010101010;

end
 
 
initial
begin
$monitor("time = %2d, a =%16b, result=%32b", $time, a,res);
end
 
endmodule
