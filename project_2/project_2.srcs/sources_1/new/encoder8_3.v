`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/10 21:13:47
// Design Name: 
// Module Name: encoder8_3
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


module encoder8_3(
    input EN,
    input [7:0] IN,
    output [2:0] OUT,
    output GS
    );

    wire [1:0] o1, o2, gs;
    encoder e1(EN, IN[3:0], o1, gs[0]);
    encoder e2(EN, IN[7:4], o2, gs[1]);
    assign OUT[0] = o1[0] | o2[0];
    assign OUT[1] = o1[1] | o2[1];
    assign OUT[2] = gs[1];
    assign GS = gs[0] | gs[1];

endmodule
