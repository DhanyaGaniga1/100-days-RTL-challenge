`timescale 1ns / 1ps

module D_FF(d,clk,q);
input d,clk;
output reg q;
initial 
q<=1'b0;
always@(posedge clk)
begin
q<=d;
end
endmodule

module Moore_state_machine(x,clk,y);
input x,clk;
output y;
wire w1,we,w3,w4,d0,d1,d2,q0,q1,q2;

assign w1=x &(~q0) & (~q1);
assign w2=x & (~q2);
assign d0=w1|w2;

assign w3=(~x) & q0 &(~q1) & (~q2);
assign w4=x & (~q0) & q1 & (~q2);
assign d1=w3|w4;

assign d2=(~x) & q0 & q1 & (~q2);
assign y=(~q0) & (~q1) & q2;

D_FF dff1(d0,clk,q0);
D_FF dff2(d1,clk,q1);
D_FF dff3(d2,clk,q2);
endmodule
