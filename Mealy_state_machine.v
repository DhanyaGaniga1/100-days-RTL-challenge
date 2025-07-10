`timescale 1ns / 1ps

module D_FF(d,clk,q);
input d,clk;
output reg q;
initial
q<=0;
always@(posedge clk)
begin
q<=d;
end
endmodule

module Mealy_state_machine(x,clk,y);
input x,clk;
output y;
wire w1,w2,d0,d1,q0,q1;

assign w1 = x & q1 & (~q0);
assign w2 = (~x) & (~q1) & q0;
assign d1 = w1 | w2;
assign d0 = x;
assign y = (~x) &q1 & q0;

D_FF dff1(d0,clk,q0);
D_FF dff2(d1,clk,q1);
endmodule
