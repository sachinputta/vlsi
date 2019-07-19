

`include "Memory.v"
module Alu(opcode,reg1,reg2,out,aadd);

input [4:0] opcode ;
input [7:0] reg1,reg2,aadd ;
output [7:0] out ;
reg [7:0] out ;

parameter ADD   = 5'b00000;
parameter ADC   = 5'b00001;
parameter SUB   = 5'b00010;
parameter SBB   = 5'b00011;
parameter MUL   = 5'b00100;
parameter FADD  = 5'b00101;
parameter FSUB  = 5'b00110;
parameter FMUL  = 5'b00111;
parameter AND   = 5'b01000;
parameter OR    = 5'b01001;
parameter XOR   = 5'b01010;
parameter NAND  = 5'b01011;
parameter NOR   = 5'b01100;
parameter XNOR  = 5'b01101;
parameter NOT   = 5'b01110;
parameter NEG   = 5'b01111;
parameter LOAD  = 5'b10000;
parameter STORE = 5'b11000;

reg [4:0] madd ;
reg mread ;
reg [7:0]min;
wire [7:0] mout;
memory memory1(madd,min,mout,mread);
reg     [7:0]  MEMORY  [31:0];
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

always @(*) 
begin

                    case (opcode )
                       
                        
                        ADD:begin
                                        
                                   out = reg1+reg2 ;
//                                 $display($time,"%d %d %d",reg1,reg2,out);
                                
                        end	
                        
                        SUB:begin       
                        
                            
                        end
                        
                        ADC:begin
                        
                              
                        end
                        
                        MUL:begin 
                        
                                
                        
                        end
                        
                        AND:begin
                        
                               
                       
                        end
                        
                        OR:begin
                        
                              
                       
                        end
                        
                        XOR:begin
                        
                               
                       
                        end
                        
                         NAND:begin
                        
                                
                       
                        end
                        
                         NOR:begin
                        
                                
                       
                        end
                        
                        NOT:begin
                        
                               
                        end
                        
                        NEG:begin
                        
                           
                        end
                        
                         LOAD: begin
                             
                                out = MEMORY[aadd];
                                
                        end
                        
                        STORE:begin
                        
                                
                        end 
                        
                        
                        		
		endcase
			
                
  


end 

endmodule
