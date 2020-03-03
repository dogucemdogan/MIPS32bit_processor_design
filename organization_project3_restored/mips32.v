module mips32(clock,instruction_out,pc_out,RegWrite,mux_extend,memWrite,aluResult,register_read_1,register_read_2,read_data_from_rs,read_data_from_rt,read_data_from_mem);


input clock;

output [31:0]instruction_out;
output [31:0]pc_out;

output [31:0]aluResult,read_data_from_rs,read_data_from_rt,read_data_from_mem;


output RegWrite,mux_extend,memWrite;

output [4:0]register_read_1,register_read_2;

wire [31:0]w1,w2,w7,w8,w9_rs,w10_rt,w11_register_write_data,w12_mux_out,w13_alu_result;

wire w3,w4,w5;
wire [1:0] w6;

pc pc1(.clock(clock),.out(w1));
instruction_memory inst_mem(.out(w2),.pc(w1));

control_unit cunit(.opp5(w2[31]),.opp4(w2[30]),.opp3(w2[29]),.opp2(w2[28]),.opp1(w2[27]),.opp0(w2[26]),.RegWrite(w3),.Mux_extend(w4),.MemWrite(w5),.Type(w6));

mips_registers mregisters(.read_reg_1(w2[25:21]), .read_reg_2(w2[20:16]), .write_reg(w2[20:16]),.read_data_1(w9_rs), .read_data_2(w10_rt),.write_data(w11_register_write_data),.RegWrite(w3), .clock(clock));

 zero_extend_16 zeroex(.in(instruction_out[15:0]),.out(w7));
 signextend_16 signex(.in(instruction_out[15:0]),.out(w8));
 
module_mux_2x1 mux2x1(.i0(w7),.i1(w8),.select(w4),.out(w12_mux_out));


alu_32bit alu32(.a(w9_rs),.b(w12_mux_out),.aluop(3'b010),.r(w13_alu_result),.c(),.v());


data_memory dmem(.address(w13_alu_result),.write_data(w10_rt),.MemWrite(w5),.ReadData(w11_register_write_data),.data_type(w6),.clock(clock));



assign instruction_out=w2;
assign pc_out=w1;

assign aluResult=w13_alu_result;
assign memWrite =w5;
assign mux_extend=w4;
assign RegWrite=w3;
assign register_read_1=w2[25:21];
assign register_read_2=w2[20:16];
assign read_data_from_rs=w9_rs;
assign read_data_from_rt=w10_rt;
assign read_data_from_mem=w11_register_write_data;



//this module is a top-level entity
//all modules in this project that have to use just structural verilog (except register & data modules)
//mips32 has to work correctly for 9 instruction.
//alu32 design has to stay same with assignment2
//or you can change alu32 with adder32 (if you do, specify in the report)

//Verilog coding guidelines 
//Guideline #1: When modeling sequential logic, use nonblocking assignments.
//Guideline #2: When modeling latches, use nonblocking assignments.
//Guideline #3: When modeling combinational logic with an always block, use blocking assignments.

endmodule