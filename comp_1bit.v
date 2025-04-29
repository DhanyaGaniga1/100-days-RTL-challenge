`timescale 1ns / 1ps

module comparator_1bit(input a,b,output e,g,s);
assign e = ~(a^b);
assign g = a&(~b);
assign s = b&(~a);
endmodule
