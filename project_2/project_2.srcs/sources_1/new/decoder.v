`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/10 20:40:32
// Design Name: 
// Module Name: decoder
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


module decoder(
    input EN,
    input [1:0] IN,
    output [3:0] OUT
    );

    assign OUT[0] = ~IN[0] & ~IN[1] & EN;
    assign OUT[1] = IN[0] & ~IN[1] & EN;
    assign OUT[2] = ~IN[0] & IN[1] & EN;
    assign OUT[3] = IN[0] & IN[1] & EN;

endmodule
