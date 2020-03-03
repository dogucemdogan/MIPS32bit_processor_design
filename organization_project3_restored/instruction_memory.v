module instruction_memory(out,pc);

output [31:0]out;
input [31:0] pc;

reg [31:0] memory[31:0];

initial
begin
$readmemb("instmem.txt", memory);
end


or or1(out[31],1'b0,memory[pc][31]);
or or2(out[30],1'b0,memory[pc][30]);
or or3(out[29],1'b0,memory[pc][29]);
or or4(out[28],1'b0,memory[pc][28]);
or or5(out[27],1'b0,memory[pc][27]);
or or6(out[26],1'b0,memory[pc][26]);
or or7(out[25],1'b0,memory[pc][25]);
or or8(out[24],1'b0,memory[pc][24]);
or or9(out[23],1'b0,memory[pc][23]);
or or10(out[22],1'b0,memory[pc][22]);
or or11(out[21],1'b0,memory[pc][21]);
or or12(out[20],1'b0,memory[pc][20]);
or or13(out[19],1'b0,memory[pc][19]);
or or14(out[18],1'b0,memory[pc][18]);
or or15(out[17],1'b0,memory[pc][17]);
or or16(out[16],1'b0,memory[pc][16]);
or or17(out[15],1'b0,memory[pc][15]);
or or18(out[14],1'b0,memory[pc][14]);
or or19(out[13],1'b0,memory[pc][13]);
or or20(out[12],1'b0,memory[pc][12]);
or or21(out[11],1'b0,memory[pc][11]);
or or22(out[10],1'b0,memory[pc][10]);
or or23(out[9],1'b0,memory[pc][09]);
or or24(out[8],1'b0,memory[pc][08]);
or or25(out[7],1'b0,memory[pc][07]);
or or26(out[6],1'b0,memory[pc][06]);
or or27(out[5],1'b0,memory[pc][05]);
or or28(out[4],1'b0,memory[pc][04]);
or or29(out[3],1'b0,memory[pc][03]);
or or30(out[2],1'b0,memory[pc][02]);
or or31(out[1],1'b0,memory[pc][01]);
or or32(out[0],1'b0,memory[pc][00]);

endmodule