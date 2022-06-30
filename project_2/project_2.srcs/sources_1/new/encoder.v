`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/10 20:59:44
// Design Name: 
// Module Name: encoder
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


module encoder(
    input EN,
    input [3:0] IN,
    output [1:0] OUT,
    output GS
    );

    assign OUT[0] = EN & (IN[1] | IN[3]);
    assign OUT[1] = EN & (IN[2] | IN[3]);
    assign GS = EN & (IN[0] | IN[1] | IN[2] | IN[3]);

endmodule
