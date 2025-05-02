`timescale 1ns / 1ps

module encoder_4x3(d,y);
input [3:0]d;
output [1:0]y;

assign y[0] = d[2]|d[3];
assign y[1] = d[1]|d[3];

endmodule
