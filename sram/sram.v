module sr_tcam(addr,out);

    input [143:0]addr;
    output [255:0]out;

    wire [255:0]b[0:71];

    sr a1(addr[1:0],b[0]);
    sr a2(addr[3:2],b[1]);
    sr a3(addr[5:4],b[2]);
    sr a4(addr[7:6],b[3]);
    sr a5(addr[9:8],b[4]);
    sr a6(addr[11:10],b[5]);
    sr a7(addr[13:12],b[6]);
    sr a8(addr[15:14],b[7]);
    sr a9(addr[17:16],b[8]);
    sr a10(addr[19:18],b[9]);
    sr a11(addr[21:20],b[10]);
    sr a12(addr[23:22],b[11]);
    sr a13(addr[25:24],b[12]);
    sr a14(addr[27:26],b[13]);
    sr a15(addr[29:28],b[14]);
    sr a16(addr[31:30],b[15]);
    sr a17(addr[33:32],b[16]);
    sr a18(addr[35:34],b[17]);
    sr a19(addr[37:36],b[18]);
    sr a20(addr[39:38],b[19]);
    sr a21(addr[41:40],b[20]);
    sr a22(addr[43:42],b[21]);
    sr a23(addr[45:44],b[22]);
    sr a24(addr[47:46],b[23]);
    sr a25(addr[49:48],b[24]);
    sr a26(addr[51:50],b[25]);
    sr a27(addr[53:52],b[26]);
    sr a28(addr[55:54],b[27]);
    sr a29(addr[57:56],b[28]);
    sr a30(addr[59:58],b[29]);
    sr a31(addr[61:60],b[30]);
    sr a32(addr[63:62],b[31]);
    sr a33(addr[65:64],b[32]);
    sr a34(addr[67:66],b[33]);
    sr a35(addr[69:68],b[34]);
    sr a36(addr[71:70],b[35]);
    sr a37(addr[73:72],b[36]);
    sr a38(addr[75:74],b[37]);
    sr a39(addr[77:76],b[38]);
    sr a40(addr[79:78],b[39]);
    sr a41(addr[81:80],b[40]);
    sr a42(addr[83:82],b[41]);
    sr a43(addr[85:84],b[42]);
    sr a44(addr[87:86],b[43]);
    sr a45(addr[89:88],b[44]);
    sr a46(addr[91:90],b[45]);
    sr a47(addr[93:92],b[46]);
    sr a48(addr[95:94],b[47]);
    sr a49(addr[97:96],b[48]);
    sr a50(addr[99:98],b[49]);
    sr a51(addr[101:100],b[50]);
    sr a52(addr[103:102],b[51]);
    sr a53(addr[105:104],b[52]);
    sr a54(addr[107:106],b[53]);
    sr a55(addr[109:108],b[54]);
    sr a56(addr[111:110],b[55]);
    sr a57(addr[113:112],b[56]);
    sr a58(addr[115:114],b[57]);
    sr a59(addr[117:116],b[58]);
    sr a60(addr[119:118],b[59]);
    sr a61(addr[121:120],b[60]);
    sr a62(addr[123:122],b[61]);
    sr a63(addr[125:124],b[62]);
    sr a64(addr[127:126],b[63]);
    sr a65(addr[129:128],b[64]);
    sr a66(addr[131:130],b[65]);
    sr a67(addr[133:132],b[66]);
    sr a68(addr[135:134],b[67]);
    sr a69(addr[137:136],b[68]);
    sr a70(addr[139:138],b[69]);
    sr a71(addr[141:140],b[70]);
    sr a72(addr[143:142],b[71]);

    assign out= b[0] & b[1] & b[2] & b[3] & b[4] & b[5] & b[6] & b[7] & b[8] & b[9] & b[10] & b[11] & b[12] & b[13] & b[14] & b[15] & b[16] & b[17] & b[18] & b[19] & b[20] & b[21] & b[22] & b[23] & b[24] & b[25] & b[26] & b[27] & b[28] & b[29] & b[30] & b[31] & b[32] & b[33] & b[34] & b[35] & b[36] & b[37] & b[38] & b[39] & b[40] & b[41] & b[42] & b[43] & b[44] & b[45] & b[46] & b[47] & b[48] & b[49] & b[50] & b[51] & b[52] & b[53] & b[54] & b[55] & b[56] & b[57] & b[58] & b[59] & b[60] & b[61] & b[62] & b[63] & b[64] & b[65] & b[66] & b[67] & b[68] & b[69] & b[70] & b[71];

endmodule    



module sr(addr,out);

    input [1:0]addr;
    output [255:0]out;

    wire [255:0]memory[0:3];
    reg [255:0]arr;

    assign memory[0][255:0]=144'd12333333;
    assign memory[1][255:0]=144'd7382917389;
    assign memory[2][255:0]=144'd3480924377;
    assign memory[3][255:0]=144'd7273621678;

    always @ (addr)
    case (addr)
        4'd0 : arr =memory[0];    
        4'd1 : arr =memory[1];    
        4'd2 : arr =memory[2];    
        4'd3 : arr =memory[3];    
    endcase

    assign out=arr;

endmodule    

