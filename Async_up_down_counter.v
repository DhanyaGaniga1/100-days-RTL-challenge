`timescale 1ns / 1ps

module JK_FF(j,k,clk,rst,q,qb);
input j,k,clk,rst;
output q,qb;
reg q;
assign qb=~q;
always@(posedge clk)
begin
if (rst)
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

module Async_up_down_counter(j,k,clk,rst,q,qb);
input j,k;
input clk,rst;
output [0:3]q,qb;

wire j=1;
wire k=1;

JK_FF jk1(j,k,clk,rst,q[0],qb[0]);
JK_FF jk2(j,k,qb[0],rst,q[1],qb[1]);
JK_FF jk3(j,k,qb[1],rst,q[2],qb[2]);
JK_FF jk4(j,k,qb[2],rst,q[3],qb[3]);
endmodule
