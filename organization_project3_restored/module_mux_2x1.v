module module_mux_2x1(i0,i1,select,out);
    input [31:0] i0;
    input [31:0] i1;
    input select;
    output [31:0] out;

	 wire [31:0] i0,i1;
    reg [31:0] out;

    always @(i0,i1,select)
    begin
    if(select==0)
        out=i0;
    else
        out=i1;
    end    
endmodule