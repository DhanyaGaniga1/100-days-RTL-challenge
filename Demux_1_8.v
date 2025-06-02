`timescale 1ns / 1ps

module Demux_18(I,S,Y);
input I;
input [2:0]S;
output [7:0]Y;

assign Y[0]=I & (~S[2]) & (~S[1]) & (~S[0]);
assign Y[1]=I & (~S[2]) & (~S[1]) & S[0];
assign Y[2]=I & (~S[2]) & S[1] & (~S[0]);
assign Y[3]=I & (~S[2]) & S[1] & S[0];
assign Y[4]=I & S[2] & (~S[1]) & (~S[0]);
assign Y[5]=I & S[2] & (~S[1]) & S[0];
assign Y[6]=I & S[2] & S[1] & (~S[0]);
assign Y[7]=I & S[2] & S[1] & S[0];

endmodule
