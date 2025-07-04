`timescale 1ns / 1ps

module PIPO_tb();
reg [0:3]D;
reg clk;
wire [0:3]Q;
PIPO dut(.D(D), .clk(clk), .Q(Q));

initial
begin
clk=1'b0;
forever #5 clk=~clk;
end

initial
begin
D=4'b1011; #10
D=4'b0101; #10
D=4'b1010;
end
endmodule
