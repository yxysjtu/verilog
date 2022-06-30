`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/11 13:44:08
// Design Name: 
// Module Name: D_flipflop
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


module D_flipflop( //rising edge
    input RST,
    input EN,
    input CLK,
    input D,
    output Q,
    output Qbar
    );

    wire q1, q, qb;
    D_latch d1(RST, ~CLK, D, q1, );
    D_latch d2(RST, EN & CLK, q1, Q, Qbar);

    /*wire ctl;
    edge_detector e(CLK, ctl);
    //SR_latch_gated s(CLR, ctl & D, ctl & ~D, Q, Qbar);
    D_latch d(ctl, D, Q, Qbar);*/

endmodule
