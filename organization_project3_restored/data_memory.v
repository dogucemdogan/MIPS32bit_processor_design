module data_memory(address,write_data,MemWrite,ReadData,data_type,clock);

input MemWrite,clock;

input [31:0] address,write_data;

output [31:0] ReadData;
input [2:0] data_type;

reg  [31:0] data [255:0] ;
		
reg [31:0] temporary_data;

initial begin
	$readmemb("data.txt",data);
	end

always @(data_type)
	begin
		if(data_type==2'b00 && MemWrite==1'b0)
		begin
		temporary_data[0]=data[address][0];
		temporary_data[1]=data[address][1];
		temporary_data[2]=data[address][2];
		temporary_data[3]=data[address][3];
		temporary_data[4]=data[address][4];
		temporary_data[5]=data[address][5];
		temporary_data[6]=data[address][6];
		temporary_data[7]=data[address][7];
		temporary_data[8]=1'b0;
		temporary_data[9]=1'b0;
		temporary_data[10]=1'b0;
		temporary_data[11]=1'b0;
		temporary_data[12]=1'b0;
		temporary_data[13]=1'b0;
		temporary_data[14]=1'b0;
		temporary_data[15]=1'b0;
		temporary_data[16]=1'b0;
		temporary_data[17]=1'b0;
		temporary_data[18]=1'b0;
		temporary_data[19]=1'b0;
		temporary_data[20]=1'b0;
		temporary_data[21]=1'b0;
		temporary_data[22]=1'b0;
		temporary_data[23]=1'b0;
		temporary_data[24]=1'b0;
		temporary_data[25]=1'b0;
		temporary_data[26]=1'b0;
		temporary_data[27]=1'b0;
		temporary_data[28]=1'b0;
		temporary_data[29]=1'b0;
		temporary_data[30]=1'b0;
		temporary_data[31]=1'b0;
		end
		
		if(data_type==2'b01 && MemWrite==1'b0)
		begin
		temporary_data[0]=data[address][0];
		temporary_data[1]=data[address][1];
		temporary_data[2]=data[address][2];
		temporary_data[3]=data[address][3];
		temporary_data[4]=data[address][4];
		temporary_data[5]=data[address][5];
		temporary_data[6]=data[address][6];
		temporary_data[7]=data[address][7];
		temporary_data[8]=data[address][8];
		temporary_data[9]=data[address][9];
		temporary_data[10]=data[address][10];
		temporary_data[11]=data[address][11];
		temporary_data[12]=data[address][12];
		temporary_data[13]=data[address][13];
		temporary_data[14]=data[address][14];
		temporary_data[15]=data[address][15];
		temporary_data[16]=1'b0;
		temporary_data[17]=1'b0;
		temporary_data[18]=1'b0;
		temporary_data[19]=1'b0;
		temporary_data[20]=1'b0;
		temporary_data[21]=1'b0;
		temporary_data[22]=1'b0;
		temporary_data[23]=1'b0;
		temporary_data[24]=1'b0;
		temporary_data[25]=1'b0;
		temporary_data[26]=1'b0;
		temporary_data[27]=1'b0;
		temporary_data[28]=1'b0;
		temporary_data[29]=1'b0;
		temporary_data[30]=1'b0;
		temporary_data[31]=1'b0;
		end
		
		if(data_type==2'b10 && MemWrite==1'b0)
		begin
		temporary_data[0]=1'b0;
		temporary_data[1]=1'b0;
		temporary_data[2]=1'b0;
		temporary_data[3]=1'b0;
		temporary_data[4]=1'b0;
		temporary_data[5]=1'b0;
		temporary_data[6]=1'b0;
		temporary_data[7]=1'b0;
		temporary_data[8]=1'b0;
		temporary_data[9]=1'b0;
		temporary_data[10]=1'b0;
		temporary_data[11]=1'b0;
		temporary_data[12]=1'b0;
		temporary_data[13]=1'b0;
		temporary_data[14]=1'b0;
		temporary_data[15]=1'b0;
		temporary_data[16]=data[address][16];
		temporary_data[17]=data[address][17];
		temporary_data[18]=data[address][18];
		temporary_data[19]=data[address][19];
		temporary_data[20]=data[address][20];
		temporary_data[21]=data[address][21];
		temporary_data[22]=data[address][22];
		temporary_data[23]=data[address][23];
		temporary_data[24]=data[address][24];
		temporary_data[25]=data[address][25];
		temporary_data[26]=data[address][26];
		temporary_data[27]=data[address][27];
		temporary_data[28]=data[address][28];
		temporary_data[29]=data[address][29];
		temporary_data[30]=data[address][30];
		temporary_data[31]=data[address][31];
		end
		
		if(data_type==2'b11 && MemWrite==1'b0)
		begin
			temporary_data[0]=data[address][0];
		temporary_data[1]=data[address][1];
		temporary_data[2]=data[address][2];
		temporary_data[3]=data[address][3];
		temporary_data[4]=data[address][4];
		temporary_data[5]=data[address][5];
		temporary_data[6]=data[address][6];
		temporary_data[7]=data[address][7];
		temporary_data[8]=data[address][8];
		temporary_data[9]=data[address][9];
		temporary_data[10]=data[address][10];
		temporary_data[11]=data[address][11];
		temporary_data[12]=data[address][12];
		temporary_data[13]=data[address][13];
		temporary_data[14]=data[address][14];
		temporary_data[15]=data[address][15];
		temporary_data[16]=data[address][16];
		temporary_data[17]=data[address][17];
		temporary_data[18]=data[address][18];
		temporary_data[19]=data[address][19];
		temporary_data[20]=data[address][20];
		temporary_data[21]=data[address][21];
		temporary_data[22]=data[address][22];
		temporary_data[23]=data[address][23];
		temporary_data[24]=data[address][24];
		temporary_data[25]=data[address][25];
		temporary_data[26]=data[address][26];
		temporary_data[27]=data[address][27];
		temporary_data[28]=data[address][28];
		temporary_data[29]=data[address][29];
		temporary_data[30]=data[address][30];
		temporary_data[31]=data[address][31];
		end
		
		if(data_type==2'b00 && MemWrite==1'b1)
		begin
		temporary_data[0]=write_data[0];
		temporary_data[1]=write_data[1];
		temporary_data[2]=write_data[2];
		temporary_data[3]=write_data[3];
		temporary_data[4]=write_data[4];
		temporary_data[5]=write_data[5];
		temporary_data[6]=write_data[6];
		temporary_data[7]=write_data[7];
		temporary_data[8]=1'b0;
		temporary_data[9]=1'b0;
		temporary_data[10]=1'b0;
		temporary_data[11]=1'b0;
		temporary_data[12]=1'b0;
		temporary_data[13]=1'b0;
		temporary_data[14]=1'b0;
		temporary_data[15]=1'b0;
		temporary_data[16]=1'b0;
		temporary_data[17]=1'b0;
		temporary_data[18]=1'b0;
		temporary_data[19]=1'b0;
		temporary_data[20]=1'b0;
		temporary_data[21]=1'b0;
		temporary_data[22]=1'b0;
		temporary_data[23]=1'b0;
		temporary_data[24]=1'b0;
		temporary_data[25]=1'b0;
		temporary_data[26]=1'b0;
		temporary_data[27]=1'b0;
		temporary_data[28]=1'b0;
		temporary_data[29]=1'b0;
		temporary_data[30]=1'b0;
		temporary_data[31]=1'b0;
		end
		
		if(data_type==2'b01 && MemWrite==1'b1)
		begin
		temporary_data[0]=write_data[0];
		temporary_data[1]=write_data[1];
		temporary_data[2]=write_data[2];
		temporary_data[3]=write_data[3];
		temporary_data[4]=write_data[4];
		temporary_data[5]=write_data[5];
		temporary_data[6]=write_data[6];
		temporary_data[7]=write_data[7];
		temporary_data[8]=write_data[8];
		temporary_data[9]=write_data[9];
		temporary_data[10]=write_data[10];
		temporary_data[11]=write_data[11];
		temporary_data[12]=write_data[12];
		temporary_data[13]=write_data[13];
		temporary_data[14]=write_data[14];
		temporary_data[15]=write_data[15];
		temporary_data[16]=1'b0;
		temporary_data[17]=1'b0;
		temporary_data[18]=1'b0;
		temporary_data[19]=1'b0;
		temporary_data[20]=1'b0;
		temporary_data[21]=1'b0;
		temporary_data[22]=1'b0;
		temporary_data[23]=1'b0;
		temporary_data[24]=1'b0;
		temporary_data[25]=1'b0;
		temporary_data[26]=1'b0;
		temporary_data[27]=1'b0;
		temporary_data[28]=1'b0;
		temporary_data[29]=1'b0;
		temporary_data[30]=1'b0;
		temporary_data[31]=1'b0;
		end
		
		if(data_type==2'b10 && MemWrite==1'b1)
		begin
		temporary_data[0]=1'b0;
		temporary_data[1]=1'b0;
		temporary_data[2]=1'b0;
		temporary_data[3]=1'b0;
		temporary_data[4]=1'b0;
		temporary_data[5]=1'b0;
		temporary_data[6]=1'b0;
		temporary_data[7]=1'b0;
		temporary_data[8]=1'b0;
		temporary_data[9]=1'b0;
		temporary_data[10]=1'b0;
		temporary_data[11]=1'b0;
		temporary_data[12]=1'b0;
		temporary_data[13]=1'b0;
		temporary_data[14]=1'b0;
		temporary_data[15]=1'b0;
		temporary_data[16]=write_data[16];
		temporary_data[17]=write_data[17];
		temporary_data[18]=write_data[18];
		temporary_data[19]=write_data[19];
		temporary_data[20]=write_data[20];
		temporary_data[21]=write_data[21];
		temporary_data[22]=write_data[22];
		temporary_data[23]=write_data[23];
		temporary_data[24]=write_data[24];
		temporary_data[25]=write_data[25];
		temporary_data[26]=write_data[26];
		temporary_data[27]=write_data[27];
		temporary_data[28]=write_data[28];
		temporary_data[29]=write_data[29];
		temporary_data[30]=write_data[30];
		temporary_data[31]=write_data[31];
		end
		
		if(data_type==2'b11 && MemWrite==1'b1)
		begin
			temporary_data[0]=write_data[0];
		temporary_data[1]=write_data[1];
		temporary_data[2]=write_data[2];
		temporary_data[3]=write_data[3];
		temporary_data[4]=write_data[4];
		temporary_data[5]=write_data[5];
		temporary_data[6]=write_data[6];
		temporary_data[7]=write_data[7];
		temporary_data[8]=write_data[8];
		temporary_data[9]=write_data[9];
		temporary_data[10]=write_data[10];
		temporary_data[11]=write_data[11];
		temporary_data[12]=write_data[12];
		temporary_data[13]=write_data[13];
		temporary_data[14]=write_data[14];
		temporary_data[15]=write_data[15];
		temporary_data[16]=write_data[16];
		temporary_data[17]=write_data[17];
		temporary_data[18]=write_data[18];
		temporary_data[19]=write_data[19];
		temporary_data[20]=write_data[20];
		temporary_data[21]=write_data[21];
		temporary_data[22]=write_data[22];
		temporary_data[23]=write_data[23];
		temporary_data[24]=write_data[24];
		temporary_data[25]=write_data[25];
		temporary_data[26]=write_data[26];
		temporary_data[27]=write_data[27];
		temporary_data[28]=write_data[28];
		temporary_data[29]=write_data[29];
		temporary_data[30]=write_data[30];
		temporary_data[31]=write_data[31];
		end
		

end
	
assign ReadData = temporary_data;



always @(posedge clock ) begin
		
	if(MemWrite)
		begin
		#5
		data[address] = temporary_data;
		$writememb("data.txt", data);
		end
		
	
	end

endmodule