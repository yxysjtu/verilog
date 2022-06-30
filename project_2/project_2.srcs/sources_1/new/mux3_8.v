`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/10 21:40:07
// Design Name: 
// Module Name: mux3_8
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


module mux3_8(
    input EN,
    input [2:0] SEL,
    input [7:0] D,
    output OUT
    );

    wire o1, o2;
    mux m1(EN & ~SEL[2], SEL[1:0], D[3:0], o1);
    mux m2(EN & SEL[2], SEL[1:0], D[7:4], o2);
    assign OUT = o1 | o2;
    
endmodule
