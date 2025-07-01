`timescale 1ns / 1ps

module SR_FF(s,r,clk,rst,q,qb);
input s,r,clk,rst;
output q,qb;
reg q;

assign qb=~q;
always@(posedge(clk))
begin
if(rst)
q<=1'b0;
else
begin
case({s,r})
2'b00:q<=q;
2'b01:q<=1'b0;
2'b10:q<=1'b1;
2'b11:q<=1'bz;
endcase
end
end
endmodule
