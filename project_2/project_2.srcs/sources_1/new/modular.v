`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/12 16:39:31
// Design Name: 
// Module Name: modular
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


module modular(
    input RST,
    input ENI,
    input CLK,
    input [7:0] A,
    input [7:0] B,
    output [7:0] R,
    output ENO, //pulse out
    output FINISH //1:finish
    );

    /*wire [7:0] alu_o, mux_o;
    add_sub_8 alu(1, R, B, , alu_o);
    mux_2_8bit m(ENI, A, alu_o, mux_o);
    register_8 r(1, 1, ~(ENI & FINISH) & CLK, mux_o, R);
    comp_8 c(1, 0, 0, R, B, , , FINISH);*/

    wire [7:0] alu_o, mux_o;
    wire cmp_o, finish, w_state;
    add_sub_8 alu(1, R, B, , alu_o);
    mux_2_8bit m(~ENI, A, alu_o, mux_o);
    register_8 r(RST, 1, w_state & ~FINISH & CLK, mux_o, R);
    comp_8 c(1, 0, 0, R, B, , , cmp_o);
    pulse_generator p(RST, w_state & ~CLK, cmp_o, ENO);
    D_flipflop d(RST & ~ENI, 1, cmp_o & ~CLK, 1, FINISH, );
    D_flipflop w(RST, 1, ENI, 1, w_state, );
    

    /*wire [7:0] alu_o, mux_o;
    wire cmp_o, finish, w_state;
    mux_2_8bit m(ENI, A, alu_o, mux_o);
    register_8 r(RST, 1, w_state & ~FINISH & CLK, mux_o, R);
    add_sub_8 alu(1, R, B, , alu_o);
    comp_8 c(1, 0, 0, R, B, , , cmp_o);
    pulse_generator p(RST, w_state & CLK, cmp_o, ENO);
    D_flipflop d(RST & ~ENI, 1, cmp_o, 1, FINISH, );
    D_flipflop w(RST, 1, ENI, 1, w_state, );*/

    /*wire [7:0] alu_o, mux_o;
    wire cmp_o;
    mux2_8bit m(ENI, A, alu_o, mux_o);
    add_sub_8 alu(1, R, B, , alu_o);
    register_8 r(RST, 1, ~FINISH & CLK, mux_o, R);
    comp_8 c(1, 0, 0, R, B, , , cmp_o);
    pulse_generator p(RST, CLK, cmp_o, ENO);
    D_flipflop d(RST & ~ENI, 1, cmp_o, 1, FINISH, );*/

endmodule
