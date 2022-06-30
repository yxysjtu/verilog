`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/10 20:46:04
// Design Name: 
// Module Name: decoder3_8
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


module decoder3_8(
    input [1:0] EN,
    input [2:0] IN,
    output [7:0] OUT
    );

    wire en = EN[0] & EN[1];
    decoder d1(en & ~IN[2], IN[1:0], OUT[3:0]);
    decoder d2(en & IN[2], IN[1:0], OUT[7:4]);

endmodule
