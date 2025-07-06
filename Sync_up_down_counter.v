`timescale 1ns / 1ps

module Sync_up_down_counter(clk,rst,U_D,q);
input clk,rst,U_D;
output reg [3:0]q;

always@(posedge clk or posedge rst)
begin
if(rst)
q<=1'b0;
else
if(U_D)
q<=q+1;
else
q<=q-1;
end
endmodule
