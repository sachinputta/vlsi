

module Register(rsrc1 , rsrc2 , rdst , in ,out1 , out2  , read  );

input [4:0] rsrc1 , rsrc2 , rdst ;
output [7:0] out1 , out2 ;
reg [7:0] out1 , out2 ;
input [7:0] in ;
input read , write ;
reg  [7:0 ]  REGISTER [31:0];

always @ (*) begin 

        if(read) begin 
                
                out1 = REGISTER[rsrc1];
                out2 = REGISTER[rsrc2];
                
        end 
        
        else begin 
        
                REGISTER [rdst] = in ;
               #1 $display($time,".      REGISTER [%d] = %d\n",rdst,REGISTER[rdst]);
        end

end

initial begin 
        
        REGISTER [1] = 7'd10;
        REGISTER [2] = 7'd10;
        REGISTER [3] = 7'd40;

end 

endmodule
