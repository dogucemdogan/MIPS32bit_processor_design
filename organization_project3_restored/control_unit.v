module control_unit(opp5,opp4,opp3,opp2,opp1,opp0,RegWrite,Mux_extend,MemWrite,Type);

input opp5,opp4,opp3,opp2,opp1,opp0;
output RegWrite,Mux_extend,MemWrite;

output [1:0] Type;


wire not_opp5,not_opp4,not_opp3,not_opp2,not_opp1,not_opp0;

wire w8,w7,w6,w5,w4,w3,w2,w1,w0;

not not5(not_opp5,opp5);
not not4(not_opp4,opp4);
not not3(not_opp3,opp3);
not not2(not_opp2,opp2);
not not1(not_opp1,opp1);
not not0(not_opp0,opp0);


and Load_Byte(w8,opp5,not_opp4,not_opp3,not_opp2,not_opp1,not_opp0);
and Load_Byte_Unsigned(w7,opp5,not_opp4,not_opp3,opp2,not_opp1,not_opp0);
and Load_Halfword(w6,opp5,not_opp4,not_opp3,not_opp2,not_opp1,opp0);
and load_Halfword_Unsigned(w5,opp5,not_opp4,not_opp3,opp2,not_opp1,opp0);
and Load_Upper_Imm(w4,not_opp5,not_opp4,opp3,opp2,opp1,opp0);
and Load_Word(w3,opp5,not_opp4,not_opp3,not_opp2,opp1,opp0);
and Store_Byte(w2,opp5,not_opp4,opp3,not_opp2,not_opp1,not_opp0);
and Store_Halfword(w1,opp5,not_opp4,opp3,not_opp2,not_opp1,opp0);
and Store_Word(w0,opp5,not_opp4,opp3,not_opp2,opp1,opp0);


or	 or_RegWrite(RegWrite,1'b0,w8,w7,w6,w5,w4,w3);


or or_Mux_extend(Mux_extend,1'b0,w7,w5,w3,w2,w1,w0);



or or_MemWrite(MemWrite,1'b0,w2,w1,w0);



// type bits to determine content of 32bits to be written or read,(byte,halfword,upper,word).

and and_type0(Type[0],opp5,opp0);
or or_type1(Type[1],1'b0,opp1);



endmodule