`timescale 1ns / 1ps

module Mux_41(I,S,Y);
input [3:0]I;
input [1:0]S;
output Y;
wire [3:0]w;

assign w[0]=I[0] & (~S[0]) & (~S[1]);
assign w[1]=I[1] & S[0] & (~S[1]);
assign w[2]=I[2] & (~S[0]) & S[1];
assign w[3]=I[3] & S[1] &S[0];
assign Y=w[0]|w[1]|w[2]|w[3];

endmodule
