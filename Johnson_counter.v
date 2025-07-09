`timescale 1ns / 1ps

module D_FF(d,clk,rst,q);
input d,clk,rst;
output reg q;
always@(posedge clk or posedge rst)
begin
if(rst)
q<=1'b0;
else
q<=d;
end
endmodule

module Johnson_counter(clk,rst,q);
input clk,rst;
output [3:0]q;
wire w1;
assign w1=~q[3];

D_FF dff1(w1,clk,rst,q[0]);
D_FF dff2(q[0],clk,rst,q[1]);
D_FF dff3(q[1],clk,rst,q[2]);
D_FF dff4(q[2],clk,rst,q[3]);
endmodule
