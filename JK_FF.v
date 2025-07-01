`timescale 1ns / 1ps

module JK_FF(j,k,clk,rst,q,qb);
input j,k,clk,rst;
output q,qb;
reg q;

assign qb=~q;
always@(posedge(clk))
begin
if(rst)
q<=1'b0;
else
begin
case({j,k})
2'b00:q<=q;
2'b01:q<=1'b0;
2'b10:q<=1'b1;
2'b11:q<=~q;
endcase
end
end
endmodule
