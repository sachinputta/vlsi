

`include "Processor.v"

module processor_tb;

   //reg [4:0] pc;
   reg 	 clock;

   processor p(clock);

   initial
     clock = 1'b1;
     
 

   always begin
     #1 clock = ~clock;
    
     
     end
     
   initial
     #245 $finish;
     
   
endmodule // hobbit_tb
