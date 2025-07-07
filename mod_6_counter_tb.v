`timescale 1ns / 1ps

module mod_6_counter_tb();
reg clk,rst;
wire [2:0]q;
mod_6_counter dut(.clk(clk), .rst(rst), .q(q));

initial
begin
clk = 1'b0;
forever #5 clk=~clk;
end

initial
begin
rst = 1'b1; #5
rst = 1'b0; #150
$finish;
end
endmodule

