`timescale 1ns / 1ps

module full_adder(output s,cout,input a,b,cin);
assign s = a^b^cin;
assign cout = (a&b)|(b&cin)|(a&cin);
endmodule 

module Ripple_carry_adder_4bit(a,b,cin,s,cout);
input [3:0]a,b;
input cin;
output [3:0]s;
output cout;
wire c1,c2,c3;
full_adder FA1(s[0],c1,a[0],b[0],cin);
full_adder FA2(s[1],c2,a[1],b[1],c1);
full_adder FA3(s[2],c3,a[2],b[2],c2);
full_adder FA4(s[3],cout,a[3],b[3],c3);
endmodule
