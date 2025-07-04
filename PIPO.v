`timescale 1ns / 1ps

module D_FF(d,clk,q);
input d,clk;
output reg q;
always@(posedge clk)
begin
q<=d;
end
endmodule

module PIPO(D,clk,Q);
input [0:3]D;
input clk;
output [0:3]Q;
D_FF dff1(D[0],clk,Q[0]);
D_FF dff2(D[1],clk,Q[1]);
D_FF dff3(D[2],clk,Q[2]);
D_FF dff4(D[3],clk,Q[3]);
endmodule
