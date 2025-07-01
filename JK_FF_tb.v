`timescale 1ns /1ps

module JK_FF_tb();
reg j_tb,k_tb,clk_tb,rst_tb;
wire q_tb,qb_tb;
JK_FF dut(j_tb,k_tb,clk_tb,rst_tb,q_tb,qb_tb);

initial
begin
clk_tb=1'b0;
forever #1 clk_tb=~clk_tb;
end

initial
begin
rst_tb=1'b1; j_tb=1'b0; k_tb=1'b0; #10
rst_tb=1'b0; j_tb=1'b0; k_tb=1'b0; #10
rst_tb=1'b0; j_tb=1'b0; k_tb=1'b1; #10
rst_tb=1'b0; j_tb=1'b1; k_tb=1'b0; #10
rst_tb=1'b0; j_tb=1'b1; k_tb=1'b1; #10
rst_tb=1'b1; j_tb=1'b0; k_tb=1'b0; #10
$finish;
end
endmodule


