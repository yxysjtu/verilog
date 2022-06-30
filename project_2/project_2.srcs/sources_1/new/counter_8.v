`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/12 11:46:38
// Design Name: 
// Module Name: counter_8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter_8( //rising edge
    input RST,
    input EN, 
    input CLK,
    output [7:0] CNT
    );

    JK_flipflop f0(RST, EN, CLK,     1, 1, CNT[0], );
    JK_flipflop f1(RST, EN, ~CNT[0], 1, 1, CNT[1], );
    JK_flipflop f2(RST, EN, ~CNT[1], 1, 1, CNT[2], );
    JK_flipflop f3(RST, EN, ~CNT[2], 1, 1, CNT[3], );
    JK_flipflop f4(RST, EN, ~CNT[3], 1, 1, CNT[4], );
    JK_flipflop f5(RST, EN, ~CNT[4], 1, 1, CNT[5], );
    JK_flipflop f6(RST, EN, ~CNT[5], 1, 1, CNT[6], );
    JK_flipflop f7(RST, EN, ~CNT[6], 1, 1, CNT[7], );

endmodule
