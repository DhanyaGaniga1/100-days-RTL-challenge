`timescale 1ns/1ps

module T_FF(clk,rst,t,q,qb);
input clk,t,rst; 
output q,qb; 
reg q; 

assign qb=~q; 
always@(posedge(clk)) 
begin 
if(rst) 
q=1'b0; 
else 
q<=~q; 

end 
endmodule
