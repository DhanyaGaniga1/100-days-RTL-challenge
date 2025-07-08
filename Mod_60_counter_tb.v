`timescale 1ns / 1ps

module Mod_60_counter_tb();
reg clk,rst;
wire [5:0]q;
Mod_60_counter dut(.clk(clk), .rst(rst), .q(q));

initial
begin
clk = 1'b0;
forever #5 clk=~clk;
end

initial
begin
rst = 1'b1; #5
rst = 1'b0; #600
$finish;
end
endmodule
