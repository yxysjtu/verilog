`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/11 13:13:28
// Design Name: 
// Module Name: SR_latch
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


module SR_latch( //active high
    input RST,
    input S,
    input R,
    output Q,
    output Qbar
    );

    assign Q = ~(R | Qbar) & RST;
    assign Qbar = ~(S | Q) | ~RST;
    
endmodule
