`timescale 1ns / 1ps

module D_FF(d,clk,q);
input d,clk;
output reg q;
always@(posedge clk)
begin
q<=d;
end
endmodule

module SISO(data_in,clk,data_out,q0,q1,q2);
input data_in,clk;
output wire data_out;
output wire q0,q1,q2;

D_FF dff1(data_in,clk,q0);
D_FF dff2(q0,clk,q1);
D_FF dff3(q1,clk,q2);
D_FF dff4(q2,clk,data_out);
endmodule
