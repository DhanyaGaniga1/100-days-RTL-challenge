`timescale 1ns / 1ps

module squarer(input a0,a1,a2, output y0,y1,y2,y3,y4,y5);
wire w1,w2,w3,w4,w5;

assign y0=a0&a1;
assign y1=a0&(~a1) | a0&a2;
assign y2=a2&(a1^a0);
assign y3=a1&(~a2);
assign y4=0;
assign y5=a2;

endmodule
