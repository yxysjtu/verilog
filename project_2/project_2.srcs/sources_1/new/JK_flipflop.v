`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/11 14:16:06
// Design Name: 
// Module Name: JK_flipflop
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


module JK_flipflop( //rising edge
    input RST, //active low
    input EN,
    input CLK,
    input J,
    input K,
    output Q,
    output Qbar
    );

    wire q, qb, q1, q1b;
    SR_latch_gated s1(RST, ~CLK, EN & J & Qbar, EN & K & Q, q, qb);
    SR_latch_gated s2(RST, CLK, q, qb, Q, Qbar);

endmodule
