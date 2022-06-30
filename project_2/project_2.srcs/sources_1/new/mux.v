`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/10 21:35:08
// Design Name: 
// Module Name: mux
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


module mux(
    input EN,
    input [1:0] SEL,
    input [3:0] D,
    output OUT
    );

    assign OUT = EN & ((~SEL[0] & ~SEL[1] & D[0]) | (SEL[0] & ~SEL[1] & D[1]) | (~SEL[0] & SEL[1] & D[2]) | (SEL[0] & SEL[1] & D[3]));

endmodule
