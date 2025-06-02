`timescale 1ns / 1ps

module Demux_14(I,S,Y);
input I;
input [1:0]S;
output [3:0]Y;

assign Y[0]=(~S[1]) & (~S[0]) & I;
assign Y[1]=(~S[1]) & S[0] & I;
assign Y[2]=S[1] & (~S[0]) & I;
assign Y[3]=S[1] & S[0] & I;

endmodule
