`timescale 1ns / 1ps

module Demux_12(I,S,Y);
input I,S;
output [1:0]Y;

assign Y[0]=I &(~S);
assign Y[1]=I & S;

endmodule
