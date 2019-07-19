module acompare_shift(Sa,Sb,SaOut,SbOut,Ma,Mb,Ea,Eb,Ec,MaOut,MbOut);
input Sa,Sb;
output SaOut,SbOut;
input [23:0]Ma,Mb;
output reg [23:0]MaOut,MbOut;
input [7:0]Ea,Eb;
output reg [7:0]Ec;
reg diff;
assign SaOut = Sa;
assign SbOut = Sb;
always@ (*)
begin
	if(Ea==Eb)
	begin
	        
		 Ec=Ea;
		//assign s=1'b1;
		 MbOut=Mb;
		 MaOut=Ma;
	end
	else if(Ea>Eb)
	begin
		diff=Ea-Eb;
		MbOut=Mb>>diff;
		MaOut=Ma;
		Ec=Ea;
		//assign s=1'b1;
	end

	else
	begin
		 diff=Eb-Ea;
		 MaOut=Ma>>diff;
		 Ec=Eb;
		 MbOut=Mb;
		//assign s=1'b1;
	end
	//$display("Ma=%b\n,Ec=%b\n",MaOut,Ec);
end

endmodule        

module acarry_calculation(a,b,p,cin,c);
input [23:0]a,b;
input cin;
output [23:0]p;
wire [23:0]g;
output [24:0]c;  
  
assign g=a&b;

assign p=a^b;
  
assign c[0]=g[0]|(p[0]&cin);

assign c[1]=g[1]|(p[1]&(g[0]|(p[0]&cin)));

assign c[2]=g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))));

assign c[3]=g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))));

assign c[4]=g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))));

assign c[5]=g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))));

assign c[6]=g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))));

assign c[7]=g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))));

assign c[8]=g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))));

assign c[9]=g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))));

assign c[10]=g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))));

assign c[11]=g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))));

assign c[12]=g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))))));

assign c[13]=g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))))))));

assign c[14]=g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))))))))));

assign c[15]=g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))))))))))));

assign c[16]=g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))))))))))))));

assign c[17]=g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))))))))))))))));

assign c[18]=g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))))))))))))))))));

assign c[19]=g[19]|(p[19]&(g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))))))))))))))))))));

assign c[20]=g[20]|(p[20]&(g[19]|(p[19]&(g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))))))))))))))))))))));

assign c[21]=g[21]|(p[21]&(g[20]|(p[20]&(g[19]|(p[19]&(g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))))))))))))))))))))))));

assign c[22]=g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(p[20]&(g[19]|(p[19]&(g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))))))))))))))))))))))))));

assign c[23]=g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(p[20]&(g[19]|(p[19]&(g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))))))))))))))))))))))))))));

assign c[24]=cin;



endmodule   
  
  module asum_calculation(p,c,sum);
  output [24:0]sum;
  input [23:0]p;
  input [24:0]c;
   assign sum[0]=p[0]^c[24];
  assign sum[1]=p[1]^c[0];
  assign sum[2]=p[2]^c[1];
  assign sum[3]=p[3]^c[2];
  assign sum[4]=p[4]^c[3];
  assign sum[5]=p[5]^c[4];
  assign sum[6]=p[6]^c[5];
  assign sum[7]=p[7]^c[6];
  assign sum[8]=p[8]^c[7];
  assign sum[9]=p[9]^c[8];
  assign sum[10]=p[10]^c[9];
  assign sum[11]=p[11]^c[10];
  assign sum[12]=p[12]^c[11];
  assign sum[13]=p[13]^c[12];
  assign sum[14]=p[14]^c[13];
  assign sum[15]=p[15]^c[14];
  assign sum[16]=p[16]^c[15];
  assign sum[17]=p[17]^c[16];
  assign sum[18]=p[18]^c[17];
  assign sum[19]=p[19]^c[18];
  assign sum[20]=p[20]^c[19];
  assign sum[21]=p[21]^c[20];
  assign sum[22]=p[22]^c[21];
  assign sum[23]=p[23]^c[22];
  assign sum[24]=c[23];

endmodule

module acla(a,b,cin,s1);
  input [23:0]a,b;
  input cin;
  wire [23:0]g,p;
  wire [24:0]c;
  wire [24:0]s;
  output [24:0]s1;
 
  acarry_calculation acc(a,b,p,cin,c);  
  asum_calculation asc(p,c,s);
  
  assign s1=s;
  
endmodule

module aadd(Sa,Sb,Sc,MaOut,MbOut,Mc);
input Sa,Sb;
output reg Sc;
input [23:0]MaOut,MbOut;
reg [23:0]M1,M2;
wire [24:0]M;
output reg [24:0]Mc;
wire sin;
assign sin = Sa^Sb;
always@ (*)
begin
	//$display("sin=%b\n",sin);
	if(sin)
	begin
		
		if(MaOut>MbOut)
		begin
		     M1=MaOut;
		     M2=~MbOut+1; 
			 Mc=M;
			 Sc=Sa;
		end
		else
		begin
		     M1=MbOut;
		     M2=~MaOut+1; 
			 Mc=M;
			 Sc=Sb;

		end
	end
	
	else
	begin
	   M1=MaOut;
	   M2=MbOut;
	   Mc=M;
	   Sc=Sa;
	end
	//$display("\nMbOut is %b\nM2 is %b\n",MbOut,M2);
//$display("Mc=%b,Maout=%b\n",Mc,MaOut);
end

acla cl(M1,M2,0,M); 

endmodule

module aresult_normalize(Mc,Sc,Ec,McOut,ScOut,EcOut);
input [24:0]Mc;
input [7:0]Ec;
input Sc;
output reg [24:0]McOut;
output reg [7:0]EcOut;
output reg ScOut;

always@(*)
begin
     
     McOut= Mc;
     ScOut=Sc;
     EcOut=Ec; 
     //$display("\nEcOut=%b,Ec=%b,McOut[24]=%b\n",EcOut,Ec,McOut[24]);
     
	if(McOut[24]==1'b1)
	begin
		McOut=McOut>>1'b1;
		EcOut=EcOut+8'b00000001;
		//$display("\nEntered if condition in result result_normalize now the McOut is %b\n",McOut);
	end
	else
	begin
		//$display("\nEntered else condition in result result_normalize now the McOut is %b\n",McOut);
		repeat(24)
		begin
			if(McOut[23]==1'b0)
			begin
				McOut= McOut<<1'b1;
				EcOut=EcOut-8'b00000001;
			end
		end	
	end
end

endmodule

module fpa(a,b,c,clk);
input [31:0]a,b;
input clk;
output [31:0]c;
reg [31:0]cReg;
wire Sa,Sb,Sc,SaOut,SbOut;
reg SaOutReg,SbOutReg,ScOutReg,ScReg;
reg [7:0]EcReg,EcReg1;
wire [7:0]Ea,Eb,Ec;
wire [23:0]Ma,Mb,MaOut,MbOut;
wire [24:0]Mc;
reg [24:0]McReg;
//wire s;
reg [23:0]MaOutReg,MbOutReg;
wire [24:0]McOut;
wire [7:0]EcOut;
wire ScOut;
wire [31:0]cwire;
reg [24:0]McOutReg;
reg [7:0]EcOutReg;

assign Ma[23]=1'b1;
assign Mb[23]=1'b1;
assign Sa=a[31];
assign Sb=b[31];
assign Ma[22:0]=a[22:0];
assign Mb[22:0]=b[22:0];
assign Ea=a[30:23];
assign Eb=b[30:23];

acompare_shift acs(Sa,Sb,SaOut,SbOut,Ma,Mb,Ea,Eb,Ec,MaOut,MbOut);

aadd aad(SaOutReg,SbOutReg,Sc,MaOutReg,MbOutReg,Mc);

aresult_normalize arn(McReg,ScReg,EcReg1,McOut,ScOut,EcOut);

assign c={ScOutReg,EcOutReg,McOutReg[22:0]};


always @(posedge clk)
begin
	//first stage
	EcReg<=Ec;
	MaOutReg<=MaOut;
	MbOutReg<=MbOut;
	SaOutReg<=SaOut;
	SbOutReg<=SbOut;

	//second stage
	ScReg<=Sc;
	McReg<=Mc;
	EcReg1<=EcReg;


	//third stage
	McOutReg<=McOut;
	ScOutReg<=ScOut;
	EcOutReg<=EcOut;
end

endmodule       










  
  
  
  