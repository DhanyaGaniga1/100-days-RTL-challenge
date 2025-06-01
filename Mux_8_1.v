`timescale 1ns / 1ps

module Mux_81(I,S,Y);
input [7:0]I;
input [2:0]S;
output Y;
wire [7:0]w;

assign w[0]=I[0] & (~S[2]) & (~S[1]) & (~S[0]);
assign w[1]=I[1] & (~S[2]) & (~S[1]) & S[0];
assign w[2]=I[2] & (~S[2]) & S[1] & (~S[0]);
assign w[3]=I[3] & (~S[2]) & S[1] & S[0];
assign w[4]=I[4] & S[2] & (~S[1]) & (~S[0]);
assign w[5]=I[5] & S[2] & (~S[1]) & S[0];
assign w[6]=I[6] & S[2] & S[1] & (~S[0]);
assign w[7]=I[7] & S[2] & S[1] & S[0];
assign Y=w[0]|w[1]|w[2]|w[3]|w[4]|w[5]|w[6]|w[7];

endmodule
