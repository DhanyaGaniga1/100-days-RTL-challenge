`timescale 1ns / 1ps

module D_FF(clk,rst,d,q,qb);
input clk,d,rst; 
output q,qb; 
reg q; 
assign qb=~q; 
always@(posedge(clk)) 
begin 
if(rst) 
q=1'b0; 
else q<=d; 
end 
endmodule
