module module_mux_2x1_testbench();

reg [31:0] i0,i1;
reg select;

wire [31:0] out;

module_mux_2x1 hatb(i0,i1,select,out);

initial begin

i0=32'b0; i1=32'b00000000000000000000000000001000; select=0;
#20
i0=32'b0; i1=32'b00000000000000000000000000001111; select=1;



end
 
 
initial
begin
$monitor("time = %2d, select=%1b, out=%32b", $time, select,out);
end
 
endmodule
