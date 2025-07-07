`timescale 1ns / 1ps

module Duodecimal_counter(clk,rst,q);
input clk,rst;
output reg [3:0]q;

always@(posedge clk or posedge rst)
begin
if(rst)
q<=4'b0000;
else 
if (q == 4'b1100)
q<=4'b0000;
else
q<=q+1;
end
endmodule
