

module memory (add,in,out,read) ;

input   [4:0]add;
input   read ,write ;
output  [7:0] out ;
reg     [7:0] out;
input   [7:0] in ;
reg     [7:0]  MEMORY  [31:0];

always @(*)begin 
        
        if(!read)begin
                
               out = MEMORY[add];
                
        end 
        
        else begin 
        
            MEMORY[add] = in ;    
        
        end 


end 

initial begin 

MEMORY[1]=7'd1;
MEMORY[2]=7'd2;
MEMORY[3]=7'd3;
MEMORY[4]=7'd4;
MEMORY[5]=7'd5;
MEMORY[6]=7'd6;
MEMORY[7]=7'd7;
MEMORY[8]=7'd8;
MEMORY[9]=7'd9;
MEMORY[10]=7'd10;
MEMORY[11]=7'd11;
MEMORY[12]=7'd12;
MEMORY[13]=7'd13;
MEMORY[14]=7'd14;
MEMORY[15]=7'd15;
MEMORY[16]=7'd16;
MEMORY[17]=7'd17;
MEMORY[18]=7'd18;




end

endmodule 
