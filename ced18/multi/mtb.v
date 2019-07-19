module mtbp_tb();
	reg [31:0]a,b;
reg clock;
	wire [63:0]out;

multiplier prefix(a,b,out,clock);
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
#4 a=32'd111;
   b=32'd111;

#4 a=32'd1111;
    b=32'd1111;

#4 a=32'd11111;
   b=32'd11111;

#4 a=32'd111111;
   b=32'd111111;


#4 a=32'd10;
   b=32'd50;
 
 
 #4 a=32'd10;
   b=32'd60;

#4 a=32'd10;
   b=32'd70;


#4 a=32'd10;
   b=32'd80;


#4 a=32'd10;
   b=32'd10;


end
initial 
begin
	#400 $finish;
end
initial
begin
	$monitor($time," a=%d b=%d  out=%d ",a,b,out);
end

endmodule
