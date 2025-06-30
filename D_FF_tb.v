`timescale 1ns /1ps

module D_FF_tb();
reg clk_tb,d_tb,rst_tb;
wire q_tb,qb_tb;
D_FF dut(clk_tb,rst_tb,d_tb,q_tb,qb_tb);

initial
begin
clk_tb = 1'b0;
forever #1 
    clk_tb=~clk_tb;
end

initial
begin
rst_tb=1'b1; d_tb=1'b0; #10
rst_tb=1'b1; d_tb=1'b1; #10
rst_tb=1'b1; d_tb=1'b0; #10
rst_tb=1'b1; d_tb=1'b1; #10
rst_tb=1'b0; d_tb=1'b0; #10
rst_tb=1'b0; d_tb=1'b1; #10
rst_tb=1'b0; d_tb=1'b0; #10
rst_tb=1'b0; d_tb=1'b1; #10

$finish;
end
endmodule
