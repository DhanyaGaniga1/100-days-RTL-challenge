`timescale 1ns / 1ps

module comp_1bit(input a,b,output s,e,g);
assign e = ~(a^b);
assign g = a&(~b);
assign s = b&(~a);
endmodule

module comp_2bit(a,b,s,e,g);
input [1:0]a,b;
output s,e,g;
wire [7:0]w;

comp_1bit c1(a[0],b[0],w[0],w[1],w[2]);
comp_1bit c2(a[1],b[1],w[3],w[4],w[5]);

assign w[6] = w[0]&w[4];
assign s = w[6]|w[3];

assign e = w[1]&w[4];

assign w[7] = w[2]&w[4];
assign g = w[7]|w[5];

endmodule
