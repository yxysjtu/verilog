`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/10 19:26:52
// Design Name: 
// Module Name: comparator
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


module comparator(
    input EQin,//MSB
    input GTin,
    input LTin,
    input A,
    input B,
    output EQ,
    output GT,
    output LT
    );

    assign EQ = EQin & (~A ^ B);
    assign GT = GTin | (EQin & A & ~B);
    assign LT = LTin | (EQin & ~A & B);

endmodule
