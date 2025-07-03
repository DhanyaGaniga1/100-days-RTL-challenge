`timescale 1ns /1ps

module SIPO_tb();
reg data_in,clk;
wire [0:3]q;
SIPO dut(.data_in(data_in), .clk(clk), .q(q));
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end

initial 
begin
data_in=1'b1; #10
data_in=1'b0; #10
data_in=1'b1; #10
data_in=1'b1; #10
data_in=1'b0;
end
endmodule
