`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/08 23:22:59
// Design Name: 
// Module Name: test1
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


module test1(

    );
    
    reg clk = 0, rst = 0;

    initial #1 rst = 1;
    always #5 clk = ~clk;

    /*reg A = 0, B = 0, Cin = 0;
    
    always #10 A <= ~A;
    always #20 B <= ~B;
    always #40 Cin <= ~Cin;
    
    wire out, c;
    adder fa(Cin, A, B, c, out);*/

    /*reg [7:0] A = 'b0, B = 'b0;
    reg Cin = 0;
    wire c;
    wire [7:0] out;

    adder_8 ta(Cin, A, B, c, out);

    always #10 A <= A + 1;
    always #20 B <= B + 1;
    always #40 Cin <= ~Cin;*/
    
    /*reg A = 0, B = 0;
    wire eq, lt, gt;
    comparator c(1, 0, 0, A, B, eq, lt, gt);
    
    always begin
        #10 B = B + 1;
        #10 A = A + 1;
    end
    */
    /*reg [7:0] A = 'b0, B = 'b0;
    wire eq, lt, gt;

    comp_8 c(1, 0, 0, A, B, eq, gt, lt);

    always begin
        #10 B = B + 1;
        #10 A = A + 1;
        #10 A = A + 1;
        #10 B = B + 1;
    end*/

    /*reg en = 0;
    reg [1:0] in = 'b0;
    wire [3:0] out;

    decoder d(en, in, out);

    initial begin
        #10 en = 1;
        forever begin
            #10 in = in + 1;
        end
    end 
    */
    /*reg [1:0] en = 0;
    reg [2:0] in = 'b0;
    wire [7:0] out;

    decoder3_8 d(en, in, out);

    initial begin
        #10 en = 'b11;
        forever begin
            #10 in = in + 1;
        end
    end */

    /*reg en = 0;
    reg [3:0] in = 'b1;
    wire [1:0] out;
    wire gs;

    encoder e(en, in, out, gs);

    initial begin
        #10 en = 1;
        forever begin
            #10 in = in << 1;
            if(in == 0) in = 1;
        end
    end*/

    /*reg en = 0;
    reg [7:0] in = 'b1;
    wire [2:0] out;
    wire gs;

    encoder8_3 e(en, in, out, gs);

    initial begin
        #10 en = 1;
        forever begin
            #10 in = in << 1;
            if(in == 0) in = 1;
        end
    end*/

    /*reg en = 0;
    reg [1:0] sel = 0;
    reg [3:0] d = 'b0101;
    wire out;

    mux m(en, sel, d, out);

    initial begin
        #10 en = 1;
        forever begin
            #10 sel = sel + 1;
        end
    end

    always #40 d = ~d;*/

    /*reg en = 0;
    reg [2:0] sel = 0;
    reg [7:0] d = 'b01010101;
    wire out;

    mux3_8 m(en, sel, d, out);

    initial begin
        #10 en = 1;
        forever begin
            #10 sel = sel + 1;
        end
    end

    always #80 d = ~d;*/

    /*reg en = 0;
    reg [1:0] sel = 0;
    reg d = 0;
    wire [3:0] out;

    demux m(en, sel, d, out);

    initial begin
        #10 en = 1;
        forever begin
            #10 sel = sel + 1;
        end
    end

    always #40 d = ~d;*/

    /*reg en = 0;
    reg [2:0] sel = 0;
    reg d = 0;
    wire [7:0] out;

    demux3_8 m(en, sel, d, out);

    initial begin
        #10 en = 1;
        forever begin
            #10 sel = sel + 1;
        end
    end

    always #80 d = ~d;*/

    /*reg [1:0] in = 0;
    wire [1:0] out;
    b2g b(0, in, out);

    always #10 in = in + 1;*/

    /*reg [7:0] in = 0;
    wire [7:0] out;
    b2g_8 b(0, in, out);

    always #10 in = in + 1;*/

    /*reg [8:0] in = 0;
    wire p;
    parity_odd c(in, p);

    always #10 in = in + 1;*/

    /*reg s = 0, r = 0;
    wire q1, q2;
    SR_latch l(s, r, q1, q2);

    always begin
        #10;
        s <= 1;
        r <= 0;
        #10;
        s <= 0;
        r <= 0;
        #10;
        s <= 0;
        r <= 1;
        #10;
        s <= 0;
        r <= 0;
        #10;
        s <= 1;
        r <= 1;
        #10;
        s <= 0;
        r <= 0;
    end*/

    /*reg d = 0, en = 0;
    wire q, qb;
    D_latch dl(en, d, q, qb);

    always #10 d = ~d;
    always #20 en = ~en;*/

    /*reg d = 0;
    wire q, qb;
    D_flipflop f(rst, 1, clk, d, q, qb);

    always #10 d = ~d;*/

    /*reg clk = 0, clr = 0;
    reg [1:0] jk = 'b11;
    wire q, qb;
    JK_flipflop f(clr, clk, jk[0], jk[1], q, qb);

    always #5 clk = ~clk;
    //always #10 jk = jk + 1;
    initial #10 clr = 1;*/

    /*reg clk = 0, clr = 0;
    reg [7:0] d = 0;
    wire [7:0] o;
    register_8 r(clr, clk, d, o);

    initial #10 clr = 1;
    always #5 clk = ~clk;
    always #10 d = d + 1;*/

    /*reg clk = 0, clr = 0;
    wire f, q;
    D_flipflop d(clr, clk, f, q, f);

    initial #10 clr = 1;
    always #5 clk = ~clk;*/

    /*reg en = 0;
    reg [2:0] freq = 0;
    wire clk_o;

    freq_divider f(en, clk, freq, clk_o);

    initial #10 en = 1;
    always #80 freq = freq + 1;*/

    /*reg clk = 0;
    wire p;
    edge_detector e(clk, p);

    always #10 clk = ~clk;*/

    /*reg en = 0;
    wire [7:0] cnt;
    counter_8 c(rst, en, clk, cnt);

    initial #10 en = 1;*/

    /*reg [7:0] a = 'hff, b = 0;
    wire [7:0] o;
    wire c;
    add_sub_8 t(0, a, b, c, o);

    always #5 b = b + 1;*/

    /*reg [7:0] a = 'h55, b = 'haa;
    reg sel = 0;
    wire [7:0] c;
    mux_2_8bit m(sel, a, b, c);

    always #10 sel = ~sel;*/

    /*reg [7:0] d = 0;
    wire [7:0] dout;
    register_8 r(1, 1, clk, d, dout);

    always #10 d = d + 1;*/

    /*reg [7:0] a = 79, b = 3;
    reg eni = 0;;
    wire [7:0] r;
    wire eno, finish;
    modular m(rst, eni, clk, a, b, r, eno, finish);

    initial begin
        #10 eni = 1;
        #10 eni = 0;
        a = 200;
        #200 eni = 1;
        #10 eni = 0;
    end*/

    reg [7:0] a = 201, b = 18;
    reg eni = 0;;
    wire [7:0] r;
    wire eno, finish;
    gcd m(rst, eni, clk, a, b, r, eno, finish);

    initial begin
        #10 eni = 1;
        #10 eni = 0;
        //b = 29;
        #600 eni = 1;
        #10 eni = 0;
    end

    /*reg d = 0;
    reg en0 = 0, en1 = 1;
    wire dout;
    shift_reg r(rst, en0, en1, clk, d, dout);

    initial begin
        #10 en0 = 1;
        #30 en0 = 0;
        en1 = 1;
        #800 en1 = 0;
    end
    always #10 d = ~d;*/

    /*reg d = 0;
    wire dout;
    pulse_generator p(rst, clk, d, dout);

    initial begin
        #20 d = 1;
        #2 d = 0;
    end*/
    //always #50 d = ~d;
    
    /*reg [11:0] w = 'hfff;
    wire d1, d2, d3;
    shift_reg16_p2s sr(rst, 1, clk, 1,1,1, w,0,0,0,0, d1, d2, d3);*/

endmodule
