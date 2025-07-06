`timescale 1ns / 1ps

module Decade_counter_tb();
reg clk,rst;
wire [3:0]q;
Decade_counter dut(.clk(clk), .rst(rst), .q(q));

initial
begin
clk=1'b0;
forever #5 clk=~clk;
end

initial
begin
rst =1; #10
rst =0; 
end
endmodule
