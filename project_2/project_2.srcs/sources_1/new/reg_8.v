`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/13 14:47:09
// Design Name: 
// Module Name: reg_8
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


module reg_8(
    input RST, //active low
    input ENI,
    input CLK,
    input [7:0] D,
    output [7:0] DOUT,
    output ENO
    );

    register_8 r(RST, ENI, CLK, D, DOUT);
    pulse_generator p(RST, ~CLK, ENI, ENO);

endmodule
