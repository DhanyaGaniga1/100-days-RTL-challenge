`timescale 1ns / 1ps

module Fibonacci_counter_tb();
reg clk,rst;
wire [15:0]f;
Fibonacci_counter dut(.clk(clk), .rst(rst), .f(f));

initial
begin
clk=1'b0;
forever #5 clk=~clk;
end

initial
begin
rst = 0; #5
rst = 1; #200
$finish;
end
endmodule
