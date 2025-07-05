`timescale 10ns / 10ps

module Async_up_down_counter_tb();
reg j,k;
reg clk,rst;
wire [0:3]q,qb;
Async_up_down_counter dut(.j(j), .k(k), .clk(clk), .rst(rst), .q(q), .qb(qb));

initial 
begin
clk=1'b0;
forever #5 clk=~clk;
end

initial 
begin
j = 1; k = 1; 
rst = 1;  
#10 rst = 0;  
#150

$finish; 
end
endmodule

