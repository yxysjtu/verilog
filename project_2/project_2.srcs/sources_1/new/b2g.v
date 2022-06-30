`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/10 22:07:19
// Design Name: 
// Module Name: b2g
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


module b2g( //binary to gray code
    input N,
    input [1:0] B,
    output [1:0] G
    );

    assign G[0] = B[0] ^ B[1];
    assign G[1] = N ^ B[1];

endmodule
