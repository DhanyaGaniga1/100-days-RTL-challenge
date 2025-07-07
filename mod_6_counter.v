`timescale 1ns / 1ps

module mod_6_counter(clk,rst,q);
input clk,rst;
output reg [2:0]q;

always@(posedge clk or posedge rst)
begin
if(rst)
q<=3'b000;
else 
if (q == 3'b101)
q<=3'b000;
else
q<=q+1;
end
endmodule


