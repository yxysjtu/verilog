`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/12 16:47:24
// Design Name: 
// Module Name: mux2_8bit
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


module mux2_8bit(
    input [1:0] SEL, //0 A 1 B
    input [7:0] A,
    input [7:0] B,
    output [7:0] C,
    output V
    );

    assign C[0] = (SEL[0] & A[0]) | (SEL[1] & B[0]);
    assign C[1] = (SEL[0] & A[1]) | (SEL[1] & B[1]);
    assign C[2] = (SEL[0] & A[2]) | (SEL[1] & B[2]);
    assign C[3] = (SEL[0] & A[3]) | (SEL[1] & B[3]);
    assign C[4] = (SEL[0] & A[4]) | (SEL[1] & B[4]);
    assign C[5] = (SEL[0] & A[5]) | (SEL[1] & B[5]);
    assign C[6] = (SEL[0] & A[6]) | (SEL[1] & B[6]);
    assign C[7] = (SEL[0] & A[7]) | (SEL[1] & B[7]);
    assign V = SEL[0] | SEL[1];

endmodule
