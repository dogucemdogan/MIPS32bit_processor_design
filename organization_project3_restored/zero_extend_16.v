module zero_extend_16(in,out);

input [15:0] in;

output [31:0] out;

or or1(out[31],1'b0,1'b0);
or or2(out[30],1'b0,1'b0);
or or3(out[29],1'b0,1'b0);
or or4(out[28],1'b0,1'b0);
or or5(out[27],1'b0,1'b0);
or or6(out[26],1'b0,1'b0);
or or7(out[25],1'b0,1'b0);
or or8(out[24],1'b0,1'b0);
or or9(out[23],1'b0,1'b0);
or or10(out[22],1'b0,1'b0);
or or11(out[21],1'b0,1'b0);
or or12(out[20],1'b0,1'b0);
or or13(out[19],1'b0,1'b0);
or or14(out[18],1'b0,1'b0);
or or15(out[17],1'b0,1'b0);
or or16(out[16],1'b0,1'b0);
or or17(out[15],1'b0,in[15]);
or or18(out[14],1'b0,in[14]);
or or19(out[13],1'b0,in[13]);
or or20(out[12],1'b0,in[12]);
or or21(out[11],1'b0,in[11]);
or or22(out[10],1'b0,in[10]);
or or23(out[9],1'b0,in[09]);
or or24(out[8],1'b0,in[08]);
or or25(out[7],1'b0,in[07]);
or or26(out[6],1'b0,in[06]);
or or27(out[5],1'b0,in[05]);
or or28(out[4],1'b0,in[04]);
or or29(out[3],1'b0,in[03]);
or or30(out[2],1'b0,in[02]);
or or31(out[1],1'b0,in[01]);
or or32(out[0],1'b0,in[00]);

endmodule