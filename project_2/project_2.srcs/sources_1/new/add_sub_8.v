`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/12 16:27:02
// Design Name: 
// Module Name: add_sub_8
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


module add_sub_8(
    input SUB, //add:0, sub 1
    input [7:0] A,
    input [7:0] B,
    output C,
    output [7:0] O
    );

    wire [7:0] b;
    xor (b[7], B[7], SUB);
    xor (b[6], B[6], SUB);
    xor (b[5], B[5], SUB);
    xor (b[4], B[4], SUB);
    xor (b[3], B[3], SUB);
    xor (b[2], B[2], SUB);
    xor (b[1], B[1], SUB);
    xor (b[0], B[0], SUB);
    adder_8 a(SUB, A, b, C, O);

endmodule
