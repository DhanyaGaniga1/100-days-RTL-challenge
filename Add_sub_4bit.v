`timescale 1ns / 1ps

module full_adder(input a,b,cin,output sum,cout);
assign sum = a^b^cin;
assign cout = (a&b)|(b&cin)|(a&cin);
endmodule

module adder_sub_4bit(a,b,ctr,s,c4);
input [3:0]a,b;
input ctr;
output [3:0]s;
output c4;
wire c1,c2,c3;

full_adder FA1(a[0],(b[0]^ctr),ctr,s[0],c1);
full_adder FA2(a[1],(b[1]^ctr),c1,s[1],c2);
full_adder FA3(a[2],(b[2]^ctr),c2,s[2],c3);
full_adder FA4(a[3],(b[3]^ctr),c3,s[3],c4);
endmodule
