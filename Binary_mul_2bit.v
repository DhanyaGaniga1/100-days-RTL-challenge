`timescale 1ns / 1ps

module half_adder(a,b,sum,cout);
input a,b;
output sum,cout;
assign sum = a^b;
assign cout = a&b;
endmodule

module Binary_multiplier_2bit(a,b,s);
input [1:0]a,b;
output [3:0]s;
wire w1,w2,w3,c1;

assign s[0] = a[0]&b[0];

and g1(w1,a[1],b[0]);
and g2(w2,a[0],b[1]);
and g3(w3,a[1],b[1]);

half_adder HA1(w1,w2,s[1],c1);
half_adder HA2(w3,c1,s[2],s[3]);
endmodule
