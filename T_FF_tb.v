`timescale 1ns/1ps

module T_FF_tb();
reg clk_tb,t_tb,rst_tb;
wire q_tb,qb_tb;
T_FF dut(clk_tb,rst_tb,t_tb,q_tb,qb_tb);

initial
begin
clk_tb = 1'b0;
forever #1 
    clk_tb=~clk_tb;
end

initial
begin
rst_tb=1'b1; t_tb=1'b0; #10
rst_tb=1'b1; t_tb=1'b1; #10
rst_tb=1'b1; t_tb=1'b0; #10
rst_tb=1'b1; t_tb=1'b1; #10
rst_tb=1'b0; t_tb=1'b0; #10
rst_tb=1'b0; t_tb=1'b1; #10
rst_tb=1'b0; t_tb=1'b0; #10
rst_tb=1'b0; t_tb=1'b1; #10

$finish;
end
endmodule
