`timescale 1ns / 1ps

module mux_21(input I0,I1,S ,output Y);
wire w1,w2;

assign w1=I1 & S;
assign w2=I0 &(~S);
assign Y=w1|w2;

endmodule
