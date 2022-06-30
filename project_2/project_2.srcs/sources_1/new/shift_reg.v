`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/14 08:54:05
// Design Name: 
// Module Name: shift_reg
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


module shift_reg(
    input RST,
    input EN_DIN,
    input EN_SHIFT,
    input CLK,
    input D,
    input DOUT
    );

    wire q;
    D_flipflop d1(RST, EN_DIN | EN_SHIFT, CLK, EN_DIN & D, q, );
    D_flipflop d2(RST, EN_SHIFT, CLK, q, DOUT, );

endmodule
