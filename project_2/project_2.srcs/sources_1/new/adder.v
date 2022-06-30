`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/09 00:01:46
// Design Name: 
// Module Name: adder
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


module adder(
    input Cin,
    input A,
    input B,
    output C,
    output O
    );
    
    wire c1, c2, o1;
    ha h1(A, B, c1, o1);
    ha h2(o1, Cin, c2, O);
    assign C = c1 || c2;
    /*assign C = (A & B) | (B & Cin) | (Cin & A);
    assign O = A ^ B ^ Cin;*/
   
endmodule
