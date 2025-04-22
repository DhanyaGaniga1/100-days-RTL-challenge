`timescale 1ns / 1ps

// Full Adder Module
module full_adder(a, b, c, sum, cout);
    input a, b, c;
    output sum, cout;
    assign sum = a ^ b ^ c;
    assign cout = (a & b) | (b & c) | (a & c);
endmodule

// 4-bit Ripple Carry Adder
module adder_4_bit(a, b, cin, s, cout);
    input [3:0] a, b;
    input cin;
    output [3:0] s;
    output cout;
    wire c1, c2, c3;
    
    full_adder FA1(a[0], b[0], cin, s[0], c1);
    full_adder FA2(a[1], b[1], c1, s[1], c2);
    full_adder FA3(a[2], b[2], c2, s[2], c3);
    full_adder FA4(a[3], b[3], c3, s[3], cout);
endmodule

// 4x3 Multiplier Module
module Multiplier_43(a, b, z);  // z = output of 4x3 multiplier
    input [2:0] a;
    input [3:0] b;
    output [6:0] z;

    wire [7:0] x, y;
    wire [3:0] s1, s2;
    wire cout1, cout2;
    assign cin = 1'b0;

    assign z[0] = a[0] & b[0],
           x[0] = a[0] & b[1],
           x[1] = a[0] & b[2],
           x[2] = a[0] & b[3],
           x[3] = 1'b0,
           x[4] = a[1] & b[0],
           x[5] = a[1] & b[1],
           x[6] = a[1] & b[2],
           x[7] = a[1] & b[3];

    adder_4_bit A1(.a(x[3:0]), .b(x[7:4]), .cin(cin), .s(s1), .cout(cout1));

    assign z[1] = s1[0],
           y[0] = a[2] & b[0],
           y[1] = a[2] & b[1],
           y[2] = a[2] & b[2],
           y[3] = a[2] & b[3],
           y[4] = s1[1],
           y[5] = s1[2],
           y[6] = s1[3],
           y[7] = cout1;

    adder_4_bit A2(.a(y[3:0]), .b(y[7:4]), .cin(cin), .s(s2), .cout(cout2));

    assign z[2] = s2[0];
    assign z[3] = s2[1];
    assign z[4] = s2[2];
    assign z[5] = s2[3];
    assign z[6] = cout2;

endmodule
