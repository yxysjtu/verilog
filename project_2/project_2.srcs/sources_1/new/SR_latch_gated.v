`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/11 13:31:30
// Design Name: 
// Module Name: SR_latch_gated
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


module SR_latch_gated(
    input RST,
    input EN,
    input S,
    input R,
    output Q,
    output Qbar
    );

    wire q, qb;
    SR_latch l(RST, EN & S, EN & R, Q, Qbar);

endmodule
