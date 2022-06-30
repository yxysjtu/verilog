`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/10 16:59:46
// Design Name: 
// Module Name: adder_8
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


module adder_8(
    input Cin,
    input [7:0] A,
    input [7:0] B,
    output C,
    output [7:0] O
    );

    wire [6:0] c;
    adder a0(Cin, A[0], B[0], c[0], O[0]);
    adder a1(c[0], A[1], B[1], c[1], O[1]);
    adder a2(c[1], A[2], B[2], c[2], O[2]);
    adder a3(c[2], A[3], B[3], c[3], O[3]);
    adder a4(c[3], A[4], B[4], c[4], O[4]);
    adder a5(c[4], A[5], B[5], c[5], O[5]);
    adder a6(c[5], A[6], B[6], c[6], O[6]);
    adder a7(c[6], A[7], B[7], C, O[7]);

endmodule
