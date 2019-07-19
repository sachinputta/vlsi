module pri_enc(d_out, d_in,v);

   output [3:0] d_out;
	output v;
   input [3:0] d_in ;
	wire d,e;
assign d_out[0]=d_in[0] & 1'b1;
assign d_out[1]=1'b1 & d_in[1] & ~d_in[0];
assign d_out[2]=1'b1 & d_in[2] & ~d_in[0] &~d_in[1];
assign d_out[3]=1'b1 & d_in[3] & ~d_in[0] & ~d_in[1] & ~d_in[2];
assign v=d_in[0] | d_in[1] | d_in[2] | d_in[3];
endmodule