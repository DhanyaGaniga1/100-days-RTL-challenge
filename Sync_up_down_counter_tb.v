`timescale 1ns / 1ps

module Sync_up_down_counter_tb();
reg clk,rst,U_D;
wire [3:0]q;
Sync_up_down_counter dut(.clk(clk), .rst(rst), .U_D(U_D), .q(q));

initial
begin
clk=1'b0;
forever #5 clk=~clk;
end

initial
begin
rst=1;
U_D=1; #5
rst=0; #150

rst=1; 
U_D=0;  #5 
rst=0;  #160 

$finish;
end
endmodule
