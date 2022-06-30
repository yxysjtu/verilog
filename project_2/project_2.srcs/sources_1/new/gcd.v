`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/12 18:46:01
// Design Name: 
// Module Name: gcd
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


module gcd(
    input RST,
    input ENI,
    input CLK,
    input [7:0] A,
    input [7:0] B,
    output [7:0] R,
    output ENO, //pulse out
    output FINISH //1:finish
    );

    wire [7:0] ma_out, mb_out, mod_out, a, b;
    wire cmp_o, mod_eno, mod_finish, reno;
    mux_2_8bit ma(~ENI, A, b, ma_out);
    mux_2_8bit mb(~ENI, B, mod_out, mb_out);
    reg_8 ra(RST, ENI || mod_finish, CLK, ma_out, a, reno);
    reg_8 rb(RST, ENI || mod_finish, CLK, mb_out, b, );
    modular mymod(RST, reno, CLK, a, b, mod_out, mod_eno, mod_finish);
    comp_8 c(1, 0, 0, b, 8'b0, cmp_o, , );
    pulse_generator p(RST, ~CLK, cmp_o & mod_finish, ENO);
    D_flipflop d(RST & ~ENI, 1, cmp_o & ~CLK, 1, FINISH, );
    assign R = a;

endmodule
