

`include "Programcode.v"
`include "Memory.v"
`include "Register.v"
`include "Alu.v"


module processor(clock);

reg [4:0] pc;

reg [4:0] madd,padd ;
input clock;
reg [4:0] rsrc1,rsrc2,rdst,opcode,op;
reg [7:0] ar1,ar2;
reg mread  ,rr; 
reg [7:0]min,rin ;
wire [7:0] mout,aout,r1,r2 ;
wire [31:0] pout;
reg [31:0] ir ;
reg [7:0] mem;
integer f , d , e , w ;
memory memory1(madd,min,mout,mread);
program prog(padd,pout);
Alu a(op,ar1,ar2,aout);
Register res(rsrc1,rsrc2,rdst,rin,r1,r2,rr);


always @(posedge clock) begin // instruction fetch
        
    
        #0 if(f) begin 
           
        // $display($time,"%d",pc);  
       padd = pc ;
        ir = pout;   
        //mem = pout[7:0];     
        d = 1 ;
        $display($time,"Fetch %b",ir);
        end 
        

end

always @(posedge clock) begin 
        
        #3 if (d & f ) begin 
       
                opcode = ir [31:27] ;   // OPCODE 
                rdst   = ir [26:22] ;   // RDST 
                rsrc1  = ir [4:0]   ;   // SRC1
                rsrc2  = ir [9:5]   ;   // SRC2
         $display($time,"Decode %d %d %d %d",opcode ,rdst, rsrc1 ,rsrc2);
         e  = 1;
         f  = 0 ;
        
        
        end

end 

always @(posedge clock) begin 
        
        #4 if (e & d ) begin 
               
             
                 op = opcode ;
                 ar1 = r1 ;
                 ar2 = r2 ;
                   
        #1 $display($time,"Execute %d %d %d %d",opcode ,ar1, ar2 ,aout);
                d = 0 ;
                w = 1;
        
        end

end 

always @(posedge clock) begin 
       
        #6 if (w & e) begin 
                  //$display($time,"Write ");
                 rin = aout;             
                 rr=0;
                                    
         //$display($time,"write %d %d %d %d",opcode ,ar1, ar2 ,aout);
                e = 0 ;
              #1  f=1;
              
              #1 pc = pc+1;
              
             
                
                
        end

end 
initial begin 

pc = 0;
mem = 0;
f = 1 ; 
d = 0 ; 
e = 0 ; 
w = 0 ;
rr = 1 ;
end 

//initial 
//$monitor ($time,"%b",ir);
endmodule
