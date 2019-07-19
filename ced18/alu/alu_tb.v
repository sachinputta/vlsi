module ALU_tb();

reg [31:0]A,B;
reg [4:0]opcode;
reg clk;
wire [63:0]OUT;

ALU a(A,B,opcode,OUT);

initial
begin
A=32'b11000001001000000000000000000001;		//1
B=32'b11000001001000000000000000000001;
opcode = 5'd6;
clk = 1;	

end	

initial	
begin
$monitor("%b\n%b\n%b",A,B,OUT);
end 	

endmodule // ALU_tb

