`timescale 1ns / 1ps

module D_FF(d,clk,q);
input d,clk;
output reg q;
always@(posedge clk)
begin
q<=d;
end
endmodule

module PISO(a,clk,data_out);
input [0:3]a;
input clk;
output data_out;
wire [3:0]d;
wire [3:1]q;

assign d[3]=a[3];
D_FF dff1(d[3],clk,q[3]);

assign d[2]=(a[2] & 1'b1) | (1'b0 & q[3]);
D_FF dff2(d[2],clk,q[2]);

assign d[1]=(a[1] & 1'b1) | (1'b0 & q[2]);
D_FF dff3(d[1],clk,q[1]);

assign d[0]=(a[0] & 1'b1) | (1'b0 & q[1]);
D_FF dff4(d[0],clk,data_out);
endmodule
