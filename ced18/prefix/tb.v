module prefix_tb();
	reg [31:0]A,B;
	reg c,clock;
	wire [31:0]sum;
	wire cout;
prefixadder prefix(A,B,c,sum,cout,clock);
initial
begin
	clock=1'b0;	
end
always
begin
	#1 clock=~clock;
end
initial
begin
#4 A=32'd111;
   B=32'd222;
   c=0;
#4 A=32'd222;
   B=32'd333;
   c=0; 
#4 A=32'd333;
   B=32'd444;
   c=1; 
#4 A=32'd444;
   B=32'd555;
   c=1;  

#4 A=32'd666;
   B=32'd777;
   c=0;  
 
 #4 A=32'd123;
   B=32'd786;
   c=0;  

#4 A=32'd15;
   B=32'd7;
   c=0;  

#4 A=32'd15;
   B=32'd71;
   c=0;  

#4 A=32'd22;
   B=32'd77;
   c=0;  

end
initial 
begin
	#400 $finish;
end
initial
begin
	$monitor($time," A=%d B=%d c=%b SUM=%d cout=%b",A,B,c,sum,cout);
end

endmodule
