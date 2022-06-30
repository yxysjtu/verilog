`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// RSTgineer: 
// 
// Create Date: 2022/03/12 09:51:14
// Design Name: 
// Module Name: freq_divider
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// DepRSTdRSTcies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional CommRSTts:
// 
//////////////////////////////////////////////////////////////////////////////////


module freq_divider(
    input RST,
    input CLK,
    input [2:0] FREQ,
    output CLK_O
    );

    wire [7:0] q;
    assign q[0] = CLK;
    JK_flipflop f1(RST, 1, q[0], 1, 1, q[1], );
    JK_flipflop f2(RST, 1, q[1], 1, 1, q[2], );
    JK_flipflop f3(RST, 1, q[2], 1, 1, q[3], );
    JK_flipflop f4(RST, 1, q[3], 1, 1, q[4], );
    JK_flipflop f5(RST, 1, q[4], 1, 1, q[5], );
    JK_flipflop f6(RST, 1, q[5], 1, 1, q[6], );
    JK_flipflop f7(RST, 1, q[6], 1, 1, q[7], );
    mux3_8 m(RST, FREQ, q, CLK_O);

endmodule
