`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/07 21:33:15
// Design Name: 
// Module Name: mux_2_8bit
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


module mux_2_8bit(
    input SEL, //0 A 1 B
    input [7:0] A,
    input [7:0] B,
    output [7:0] C
    );

    assign C[0] = (A[0] & ~SEL) | (B[0] & SEL);
    assign C[1] = (A[1] & ~SEL) | (B[1] & SEL);
    assign C[2] = (A[2] & ~SEL) | (B[2] & SEL);
    assign C[3] = (A[3] & ~SEL) | (B[3] & SEL);
    assign C[4] = (A[4] & ~SEL) | (B[4] & SEL);
    assign C[5] = (A[5] & ~SEL) | (B[5] & SEL);
    assign C[6] = (A[6] & ~SEL) | (B[6] & SEL);
    assign C[7] = (A[7] & ~SEL) | (B[7] & SEL);

endmodule
