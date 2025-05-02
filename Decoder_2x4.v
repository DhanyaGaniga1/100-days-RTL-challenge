`timescale 1ns / 1ps

module Decoder_2x4(a,d);
input [1:0]a;
output [3:0]d;

assign d[0] = (~a[0])&(~a[1]);
assign d[1] = a[0]&(~a[1]);
assign d[2] = a[1]&(~a[0]);
assign d[3] = a[0]&a[1];

endmodule
