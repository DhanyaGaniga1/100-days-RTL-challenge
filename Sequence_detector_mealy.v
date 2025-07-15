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

module Sequence_detector_mealy(x,clk,y);
input x,clk;
output y;
wire qa,qb,da,db;

assign da = qa&(~qb) | x&(~qa)&qb;
assign db = x&(~qa)&(~qb) | x&qa&qb | (~x)&qa&(~qb);
assign y=(~x)&qa&(~qb);

D_FF dff1(da,clk,qa);
D_FF dff2(db,clk,qb);

endmodule
