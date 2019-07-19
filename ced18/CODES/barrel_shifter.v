module mux (a,b,sel,out,clk);
input  a,b,sel,clk;
output out;
wire OUT;

assign OUT = ~sel&a | sel&b;

dff d0(OUT,clk,out);

endmodule // 2x1_mux

module dff(d,clk,q);
input d, clk;
output reg q;

always @ (posedge clk)
begin
q <= d;
end
endmodule

module not_pipelined_mux_2x1(a,b,sel,out);

input a,b,sel;
output out;

assign out= ~sel&a | sel&b;


endmodule // 2x1_mux


module shifter (a,clk,sel,rotate,b);
input [31:0] a;
input [4:0] sel;
input rotate,clk;
output [31:0] b;
wire rotate1,rotate2,rotate3,rotate4;
wire [31:0] a1,a2,a3,a4;
wire [4:0]sel1,sel2,sel3,sel4;


not_pipelined_mux_2x1 p1a ( 0,a[0], rotate, l1a);

mux p11(a[31], l1a , sel[0], a1[31], clk);
mux p12(a[30], a[31], sel[0], a1[30], clk);
mux p13(a[29], a[30], sel[0], a1[29], clk);
mux p14(a[28], a[29], sel[0], a1[28], clk);
mux p15(a[27], a[28], sel[0], a1[27], clk);
mux p16(a[26], a[27], sel[0], a1[26], clk);
mux p17(a[25], a[26], sel[0], a1[25], clk);
mux p18(a[24], a[25], sel[0], a1[24], clk);
mux p19(a[23], a[24], sel[0], a1[23], clk);
mux p110(a[22], a[23], sel[0], a1[22], clk);
mux p111(a[21], a[22], sel[0], a1[21], clk);
mux p112(a[20], a[21], sel[0], a1[20], clk);
mux p113(a[19], a[20], sel[0], a1[19], clk);
mux p114(a[18], a[19], sel[0], a1[18], clk);
mux p115(a[17], a[18], sel[0], a1[17], clk);
mux p116(a[16], a[17], sel[0], a1[16], clk);
mux p117(a[15], a[16], sel[0], a1[15], clk);
mux p118(a[14], a[15], sel[0], a1[14], clk);
mux p119(a[13], a[14], sel[0], a1[13], clk);
mux p120(a[12], a[13], sel[0], a1[12], clk);
mux p121(a[11], a[12], sel[0], a1[11], clk);
mux p122(a[10], a[11], sel[0], a1[10], clk);
mux p123(a[9], a[10], sel[0], a1[9], clk);
mux p124(a[8], a[9], sel[0], a1[8], clk);
mux p125(a[7], a[8], sel[0], a1[7], clk);
mux p126(a[6], a[7], sel[0], a1[6], clk);
mux p127(a[5], a[6], sel[0], a1[5], clk);
mux p128(a[4], a[5], sel[0], a1[4], clk);
mux p129(a[3], a[4], sel[0], a1[3], clk);
mux p130(a[2], a[3], sel[0], a1[2], clk);
mux p131(a[1], a[2], sel[0] , a1[1], clk);
mux p132(a[0], a[1], sel[0] , a1[0] , clk);
//level 1


dff  r11(rotate,clk,rotate1);
not_pipelined_mux_2x1 p2a ( 0,a1[1], rotate1, l2a);
not_pipelined_mux_2x1 p2b ( 0,a1[0], rotate1, l2b);

dff s11(sel[1], clk, sel1[1]);

mux p21(a1[31], l2a, sel1[1], a2[31], clk);
mux p22(a1[30], l2b, sel1[1], a2[30],clk);
mux p23(a1[29], a1[31], sel1[1], a2[29],clk);
mux p24(a1[28], a1[30], sel1[1], a2[28],clk);
mux p25(a1[27], a1[29], sel1[1], a2[27],clk);
mux p26(a1[26], a1[28], sel1[1], a2[26],clk);
mux p27(a1[25], a1[27], sel1[1], a2[25],clk);
mux p28(a1[24], a1[26], sel1[1], a2[24],clk);
mux p29(a1[23], a1[25], sel1[1], a2[23],clk);
mux p210(a1[22], a1[24], sel1[1], a2[22],clk);
mux p211(a1[21], a1[23], sel1[1], a2[21],clk);
mux p212(a1[20], a1[22], sel1[1], a2[20],clk);
mux p213(a1[19], a1[21], sel1[1], a2[19],clk);
mux p214(a1[18], a1[20], sel1[1], a2[18],clk);
mux p215(a1[17], a1[19], sel1[1], a2[17],clk);
mux p216(a1[16], a1[18], sel1[1], a2[16],clk);
mux p217(a1[15], a1[17], sel1[1], a2[15],clk);
mux p218(a1[14], a1[16], sel1[1], a2[14],clk);
mux p219(a1[13], a1[15], sel1[1], a2[13],clk);
mux p220(a1[12], a1[14], sel1[1], a2[12],clk);
mux p221(a1[11], a1[13], sel1[1], a2[11],clk);
mux p222(a1[10], a1[12], sel1[1], a2[10],clk);
mux p223(a1[9], a1[11], sel1[1], a2[9],clk);
mux p224(a1[8], a1[10], sel1[1], a2[8],clk);
mux p225(a1[7], a1[9], sel1[1], a2[7],clk);
mux p226(a1[6], a1[8], sel1[1], a2[6],clk);
mux p227(a1[5], a1[7], sel1[1], a2[5],clk);
mux p228(a1[4], a1[6], sel1[1], a2[4],clk);
mux p229(a1[3], a1[5], sel1[1], a2[3],clk);
mux p230( a1[2], a1[4], sel1[1], a2[2], clk);
mux p231( a1[1], a1[3], sel1[1], a2[1], clk);
mux p232( a1[0], a1[2], sel1[1], a2[0], clk);
// level 2

dff r22(rotate1, clk, rotate2);
not_pipelined_mux_2x1 p3a ( 0,a2[3], rotate2, l3a);
not_pipelined_mux_2x1 p3b ( 0,a2[2], rotate2, l3b);
not_pipelined_mux_2x1 p3c ( 0,a2[1], rotate2, l3c);
not_pipelined_mux_2x1 p3d ( 0,a2[0], rotate2, l3d);

dff  s21(sel[2],clk, sel1[2]);
dff  s22(sel1[2], clk, sel2[2]);

mux p31 ( a2[31],l3a, sel2[2], a3[31], clk);
mux p32 ( a2[30],l3b, sel2[2], a3[30], clk);
mux p33 ( a2[29],l3c, sel2[2], a3[29], clk);
mux p34 ( a2[28],l3d, sel2[2], a3[28], clk);
mux p35 ( a2[27],a2[31], sel2[2], a3[27], clk);
mux p36 ( a2[26],a2[30], sel2[2], a3[26], clk);
mux p37 ( a2[25],a2[29], sel2[2], a3[25], clk);
mux p38 ( a2[24],a2[28], sel2[2], a3[24], clk);
mux p39 ( a2[23],a2[27], sel2[2], a3[23], clk);
mux p310 ( a2[22],a2[26], sel2[2], a3[22], clk);
mux p311 ( a2[21],a2[25], sel2[2], a3[21], clk);
mux p312 ( a2[20],a2[24], sel2[2], a3[20], clk);
mux p313 ( a2[19],a2[23], sel2[2], a3[19], clk);
mux p314 ( a2[18],a2[22], sel2[2], a3[18], clk);
mux p315 ( a2[17],a2[21], sel2[2], a3[17], clk);
mux p316 ( a2[16],a2[20], sel2[2], a3[16], clk);
mux p317 ( a2[15],a2[19], sel2[2], a3[15], clk);
mux p318 ( a2[14],a2[18], sel2[2], a3[14], clk);
mux p319 ( a2[13],a2[17], sel2[2], a3[13], clk);
mux p320 ( a2[12],a2[16], sel2[2], a3[12], clk);
mux p321 ( a2[11],a2[15], sel2[2], a3[11], clk);
mux p322 ( a2[10],a2[14], sel2[2], a3[10], clk);
mux p323 ( a2[9],a2[13], sel2[2], a3[9], clk);
mux p324 ( a2[8],a2[12], sel2[2], a3[8], clk);
mux p325 ( a2[7],a2[11], sel2[2], a3[7], clk);
mux p326 ( a2[6],a2[10], sel2[2], a3[6], clk);
mux p327 ( a2[5],a2[9], sel2[2], a3[5], clk);
mux p328 ( a2[4],a2[8], sel2[2], a3[4], clk);
mux p329 ( a2[3],a2[7], sel2[2], a3[3], clk);
mux p330 ( a2[2],a2[6], sel2[2], a3[2], clk);
mux p331 ( a2[1],a2[5], sel2[2], a3[1], clk);
mux p332 ( a2[0],a2[4], sel2[2], a3[0], clk);
// level 3

dff r33( rotate2, clk, rotate3);

not_pipelined_mux_2x1 p4a ( 0,a3[7], rotate3, l4a);
not_pipelined_mux_2x1 p4b ( 0,a3[6], rotate3, l4b);
not_pipelined_mux_2x1 p4c ( 0,a3[5], rotate3, l4c);
not_pipelined_mux_2x1 p4d ( 0,a3[4], rotate3, l4d);
not_pipelined_mux_2x1 p4e ( 0,a3[3], rotate3, l4e);
not_pipelined_mux_2x1 p4f ( 0,a3[2], rotate3, l4f);
not_pipelined_mux_2x1 p4g ( 0,a3[1], rotate3, l4g);
not_pipelined_mux_2x1 p4h ( 0,a3[0], rotate3, l4h);

dff s31(sel[3],clk,sel1[3]);
dff s32(sel1[3], clk, sel2[3]);
dff s33(sel2[3], clk, sel3[3]);

mux p41 ( a3[31],l4a, sel3[3], a4[31], clk);
mux p42 ( a3[30],l4b, sel3[3], a4[30], clk);
mux p43 ( a3[29],l4c, sel3[3], a4[29], clk);
mux p44 ( a3[28],l4d, sel3[3], a4[28], clk);
mux p45 ( a3[27],l4e, sel3[3], a4[27], clk);
mux p46 ( a3[26],l4f, sel3[3], a4[26], clk);
mux p47 ( a3[25],l4g, sel3[3], a4[25], clk);
mux p48 ( a3[24],l4h, sel3[3], a4[24], clk);
mux p49 ( a3[23],a3[31], sel3[3], a4[23], clk);
mux p410 ( a3[22],a3[30], sel3[3], a4[22], clk);
mux p411 ( a3[21],a3[29], sel3[3], a4[21], clk);
mux p412 ( a3[20],a3[28], sel3[3], a4[20], clk);
mux p413 ( a3[19],a3[27], sel3[3], a4[19], clk);
mux p414 ( a3[18],a3[26], sel3[3], a4[18], clk);
mux p415 ( a3[17],a3[25], sel3[3], a4[17], clk);
mux p416 ( a3[16],a3[24], sel3[3], a4[16], clk);
mux p417 ( a3[15],a3[23], sel3[3], a4[15], clk);
mux p418 ( a3[14],a3[22], sel3[3], a4[14], clk);
mux p419 ( a3[13],a3[21], sel3[3], a4[13], clk);
mux p420 ( a3[12],a3[20], sel3[3], a4[12], clk);
mux p421 ( a3[11],a3[19], sel3[3], a4[11], clk);
mux p422 ( a3[10],a3[18], sel3[3], a4[10], clk);
mux p423 ( a3[9],a3[17], sel3[3], a4[9], clk);
mux p424 ( a3[8],a3[16], sel3[3], a4[8], clk);
mux p425 ( a3[7],a3[15], sel3[3], a4[7], clk);
mux p426 ( a3[6],a3[14], sel3[3], a4[6], clk);
mux p427 ( a3[5],a3[13], sel3[3], a4[5], clk);
mux p428 ( a3[4],a3[12], sel3[3], a4[4], clk);
mux p429 ( a3[3],a3[11], sel3[3], a4[3], clk);
mux p430 ( a3[2],a3[10], sel3[3], a4[2], clk);
mux p431 ( a3[1],a3[9], sel3[3], a4[1], clk);
mux p432 ( a3[0],a3[8], sel3[3], a4[0], clk);

// level 4

dff   aa(rotate3, clk, rotate4);

not_pipelined_mux_2x1 p5a ( 0,a4[15], rotate4, l5a);
not_pipelined_mux_2x1 p5b ( 0,a4[14], rotate4, l5b);
not_pipelined_mux_2x1 p5c ( 0,a4[13], rotate4, l5c);
not_pipelined_mux_2x1 p5d ( 0,a4[12], rotate4, l5d);
not_pipelined_mux_2x1 p5e ( 0,a4[11], rotate4, l5e);
not_pipelined_mux_2x1 p5f ( 0,a4[10], rotate4, l5f);
not_pipelined_mux_2x1 p5g ( 0,a4[9], rotate4, l5g);
not_pipelined_mux_2x1 p5h ( 0,a4[8], rotate4, l5h);
not_pipelined_mux_2x1 p5i ( 0,a4[7], rotate4, l5i);
not_pipelined_mux_2x1 p5j ( 0,a4[6], rotate4, l5j);
not_pipelined_mux_2x1 p5k ( 0,a4[5], rotate4, l5k);
not_pipelined_mux_2x1 p5l ( 0,a4[4], rotate4, l5l);
not_pipelined_mux_2x1 p5m ( 0,a4[3], rotate4, l5m);
not_pipelined_mux_2x1 p5n ( 0,a4[2], rotate4, l5n);
not_pipelined_mux_2x1 p5o ( 0,a4[1], rotate4, l5o);
not_pipelined_mux_2x1 p5p ( 0,a4[0], rotate4, l5p);

dff s41(sel[4],clk,sel1[4]);
dff s42(sel1[4], clk, sel2[4]);
dff s43(sel2[4], clk, sel3[4]);
dff s44(sel3[4], clk, sel4[4]);


mux p51 ( a4[31],l5a, sel4[4], b[31], clk);
mux p52 ( a4[30],l5b, sel4[4], b[30], clk);
mux p53 ( a4[29],l5c, sel4[4], b[29], clk);
mux p54 ( a4[28],l5d, sel4[4], b[28], clk);
mux p55 ( a4[27],l5e, sel4[4], b[27], clk);
mux p56 ( a4[26],l5f, sel4[4], b[26], clk);
mux p57 ( a4[25],l5g, sel4[4], b[25], clk);
mux p58 ( a4[24],l5h, sel4[4], b[24], clk);
mux p59 ( a4[23],l5i, sel4[4], b[23], clk);
mux p510 ( a4[22],l5j, sel4[4], b[22], clk);
mux p511 ( a4[21],l5k, sel4[4], b[21], clk);
mux p512 ( a4[20],l5l, sel4[4], b[20], clk);
mux p513 ( a4[19],l5m, sel4[4], b[19], clk);
mux p514 ( a4[18],l5n, sel4[4], b[18], clk);
mux p515 ( a4[17],l5o, sel4[4], b[17], clk);
mux p516 ( a4[16],l5p, sel4[4], b[16], clk);
mux p517 ( a4[15],a4[31], sel4[4], b[15], clk);
mux p518 ( a4[14],a4[30], sel4[4], b[14], clk);
mux p519 ( a4[13],a4[29], sel4[4], b[13], clk);
mux p520 ( a4[12],a4[28], sel4[4], b[12], clk);
mux p521 ( a4[11],a4[27], sel4[4], b[11], clk);
mux p522 ( a4[10],a4[26], sel4[4], b[10], clk);
mux p523 ( a4[9],a4[25], sel4[4], b[9], clk);
mux p524 ( a4[8],a4[24], sel4[4], b[8], clk);
mux p525 ( a4[7],a4[23], sel4[4], b[7], clk);
mux p526 ( a4[6],a4[22], sel4[4], b[6], clk);
mux p527 ( a4[5],a4[21], sel4[4], b[5], clk);
mux p528 ( a4[4],a4[20], sel4[4], b[4], clk);
mux p529 ( a4[3],a4[19], sel4[4], b[3], clk);
mux p530 ( a4[2],a4[18], sel4[4], b[2], clk);
mux p531 ( a4[1],a4[17], sel4[4], b[1], clk);
mux p532 ( a4[0],a4[16], sel4[4], b[0], clk);

endmodule




