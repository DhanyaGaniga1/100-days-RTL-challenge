`timescale 1ns / 1ps

module Mod_60_counter(clk,rst,q);
input clk,rst;
output reg [5:0]q;

always@(posedge clk or posedge rst)
begin
if(rst)
q<=6'b000000;
else 
  if (q == 6'b111011)
q<=6'b000000;
else
q<=q+1;
end
endmodule

