`timescale 1ns / 1ps

module D_FF(d,clk,q);
input d,clk;
output reg q;
always@(posedge clk)
begin
q<=d;
end
endmodule

module SIPO(data_in,clk,q);
input data_in,clk;
output [0:3]q;
D_FF dff1(data_in,clk,q[0]);
D_FF dff2(q[0],clk,q[1]);
D_FF dff3(q[1],clk,q[2]);
D_FF dff4(q[2],clk,q[3]);
endmodule
