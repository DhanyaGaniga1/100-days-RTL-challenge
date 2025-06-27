`timescale 1ns / 1ps
module BCD_2_E3(B,E);

input [3:0]B;
output [3:0]E;

assign E=B + 4'b0011;

endmodule
