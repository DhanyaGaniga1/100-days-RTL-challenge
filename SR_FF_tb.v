`timescale 1ns /1ps

module SR_FF_tb();
reg s_tb,r_tb,clk_tb,rst_tb;
wire q_tb,qb_tb;
SR_FF dut(s_tb,r_tb,clk_tb,rst_tb,q_tb,qb_tb);

initial
begin
clk_tb=1'b0;
forever #1 clk_tb=~clk_tb;
end

initial
begin
rst_tb=1'b1; s_tb=1'b0; r_tb=1'b0; #10
rst_tb=1'b0; s_tb=1'b0; r_tb=1'b0; #10
rst_tb=1'b0; s_tb=1'b0; r_tb=1'b1; #10
rst_tb=1'b0; s_tb=1'b1; r_tb=1'b0; #10
rst_tb=1'b0; s_tb=1'b1; r_tb=1'b1; #10
rst_tb=1'b1; s_tb=1'b0; r_tb=1'b0; #10
$finish;
end
endmodule
