`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/10 19:29:05
// Design Name: 
// Module Name: comp_8
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


module comp_8(
    input EQin,//MSB
    input GTin,
    input LTin,
    input [7:0] A,
    input [7:0] B,
    output EQ,
    output GT,
    output LT
    );

    wire [6:0] eq, gt, lt;
    comparator c7(EQin, GTin, LTin, A[7], B[7], eq[6], gt[6], lt[6]);
    comparator c6(eq[6], gt[6], lt[6], A[6], B[6], eq[5], gt[5], lt[5]);
    comparator c5(eq[5], gt[5], lt[5], A[5], B[5], eq[4], gt[4], lt[4]);
    comparator c4(eq[4], gt[4], lt[4], A[4], B[4], eq[3], gt[3], lt[3]);
    comparator c3(eq[3], gt[3], lt[3], A[3], B[3], eq[2], gt[2], lt[2]);
    comparator c2(eq[2], gt[2], lt[2], A[2], B[2], eq[1], gt[1], lt[1]);
    comparator c1(eq[1], gt[1], lt[1], A[1], B[1], eq[0], gt[0], lt[0]);
    comparator c0(eq[0], gt[0], lt[0], A[0], B[0], EQ, GT, LT);

endmodule
