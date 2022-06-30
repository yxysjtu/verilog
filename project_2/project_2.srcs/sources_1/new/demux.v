`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/10 21:54:32
// Design Name: 
// Module Name: demux
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


module demux(
    input EN,
    input [1:0] SEL,
    input D,
    output [3:0] OUT
    );

    assign OUT[0] = EN & (~SEL[0] & ~SEL[1] & D);
    assign OUT[1] = EN & (SEL[0] & ~SEL[1] & D);
    assign OUT[2] = EN & (~SEL[0] & SEL[1] & D);
    assign OUT[3] = EN & (SEL[0] & SEL[1] & D);

endmodule
