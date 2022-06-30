`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/10 22:13:32
// Design Name: 
// Module Name: b2g_8
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


module b2g_8(
    input N, 
    input [7:0] B,
    output [7:0] G
    );

    b2g b3(N, B[7:6], G[7:6]);
    b2g b2(B[6], B[5:4], G[5:4]);
    b2g b1(B[4], B[3:2], G[3:2]);
    b2g b0(B[2], B[1:0], G[1:0]);

endmodule
