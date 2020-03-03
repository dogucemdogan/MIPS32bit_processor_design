module control_unit_testbench();

reg opp5,opp4,opp3,opp2,opp1,opp0;

wire RegWrite,Mux_extend,MemWrite;
wire [1:0]Type;

control_unit unit(opp5,opp4,opp3,opp2,opp1,opp0,RegWrite,Mux_extend,MemWrite,Type);


initial begin
opp5 = 1'b1; opp4 = 1'b0; opp3 = 1'b0; opp2 = 1'b0; opp1 = 1'b0; opp0 = 1'b0; // Load Byte Oppcode 100000

#20
opp5 = 1'b1; opp4 = 1'b0; opp3 = 1'b0; opp2 = 1'b1; opp1 = 1'b0; opp0 = 1'b0; // Load Byte Unsigned Oppcode 100100

#20
opp5 = 1'b1; opp4 = 1'b0; opp3 = 1'b0; opp2 = 1'b0; opp1 = 1'b0; opp0 = 1'b1; // Load Halfword Oppcode 100001

#20
opp5 = 1'b1; opp4 = 1'b0; opp3 = 1'b0; opp2 = 1'b1; opp1 = 1'b0; opp0 = 1'b1; // Load Halfword Unsigned Oppcode 100101

#20
opp5 = 1'b0; opp4 = 1'b0; opp3 = 1'b1; opp2 = 1'b1; opp1 = 1'b1; opp0 = 1'b1; // Load Upper Immediate Oppcode 001111

#20
opp5 = 1'b1; opp4 = 1'b0; opp3 = 1'b0; opp2 = 1'b0; opp1 = 1'b1; opp0 = 1'b1; // Load Word Oppcode 100011

#20
opp5 = 1'b1; opp4 = 1'b0; opp3 = 1'b1; opp2 = 1'b0; opp1 = 1'b0; opp0 = 1'b0; // Store Byte Oppcode 101000

#20
opp5 = 1'b1; opp4 = 1'b0; opp3 = 1'b1; opp2 = 1'b0; opp1 = 1'b0; opp0 = 1'b1; // Store Halfword Oppcode 101001

#20
opp5 = 1'b1; opp4 = 1'b0; opp3 = 1'b1; opp2 = 1'b0; opp1 = 1'b1; opp0 = 1'b1; // Store Word Oppcode 101011




end
 
 
initial
begin
$monitor("time = %2d, opp5=%1b,opp4=%1b,opp3=%1b,opp2=%1b,opp1=%1b,opp0=%1b,RegWrite=%1b,Mux_extend=%1b,MemWrite=%1b,Type=%2b ", $time, opp5,opp4,opp3,opp2,opp1,opp0,RegWrite,Mux_extend,MemWrite,Type);
end
 
endmodule