`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/10 21:57:40
// Design Name: 
// Module Name: demux3_8
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


module demux3_8(
    input EN,
    input [2:0] SEL,
    input D,
    output [7:0] OUT
    );

    demux d1(EN & ~SEL[2], SEL[1:0], D, OUT[3:0]);
    demux d2(EN & SEL[2], SEL[1:0], D, OUT[7:4]);

endmodule
