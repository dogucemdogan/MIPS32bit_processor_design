module pc(clock,out); 
input clock; 
output [31:0] out; 
reg [31:0] next; 
 
 initial next = 32'b0; 
  always @(posedge clock) 
    begin 
        next = next + 1'b1; 
      end 
		
  assign out = next; 
endmodule 