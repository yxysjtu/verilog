`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/12 09:17:53
// Design Name: 
// Module Name: register_8
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


module register_8( //rising edge
    input RST, //active low
    input EN,
    input CLK,
    input [7:0] D,
    output [7:0] DOUT
    );

    D_flipflop d7(RST, EN, CLK, D[7], DOUT[7], );
    D_flipflop d6(RST, EN, CLK, D[6], DOUT[6], );
    D_flipflop d5(RST, EN, CLK, D[5], DOUT[5], );
    D_flipflop d4(RST, EN, CLK, D[4], DOUT[4], );
    D_flipflop d3(RST, EN, CLK, D[3], DOUT[3], );
    D_flipflop d2(RST, EN, CLK, D[2], DOUT[2], );
    D_flipflop d1(RST, EN, CLK, D[1], DOUT[1], );
    D_flipflop d0(RST, EN, CLK, D[0], DOUT[0], );


endmodule
