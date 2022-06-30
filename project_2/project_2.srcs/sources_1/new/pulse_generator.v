`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/07 18:44:42
// Design Name: 
// Module Name: pulse_generator
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


module pulse_generator( //rising edge
    input RST,
    input CLK,
    input IN,
    output OUT
    );

    wire q;
    D_flipflop d1(RST & ~OUT, 1, IN, 1, q, );
    D_flipflop d2(RST, 1, CLK, q, OUT, );

endmodule
