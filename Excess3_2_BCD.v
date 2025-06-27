`timescale 1ns / 1ps

module E3_2_BCD(E,B);
input [3:0]E;
output [3:0]B;

assign B = E - 4'b011;

endmodule
