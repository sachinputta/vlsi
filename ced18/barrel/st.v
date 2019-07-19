module shifter_tb;
reg [31:0]a;
reg [4:0]sel;
reg rotate,clock;
wire [31:0]b;

shifter a0(a,clock,sel,rotate,b);

always
begin
#1 clock = ~clock;
end

initial
begin
clock=1;
#0 a=32'b11111;rotate=1;sel=5'd1;
#2 a=32'b111111;rotate=1;sel=5'd5; 
#2 a=32'b1111111;rotate=1;sel=5'd4;
#2 a=32'b11111111;rotate=1;sel=5'd5;
#2 a=32'b111111111;rotate=1;sel=5'd5;
#2 a=32'b1111111111;rotate=1;sel=5'd5;
$finish;

end

initial
begin
$monitor($time,"clock=%b a=%b sel=%b rotate=%b b=%b",clock,a,sel,rotate,b);
end

endmodule

