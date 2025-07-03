`timescale 10ns /1ps

module PISO_tb();
reg [0:3]a;
reg clk;
wire data_out;
 
PISO dut(.a(a), .clk(clk), .data_out(data_out));
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end

initial
begin
a=4'b1110; #10
a=4'b1100; #10
a=4'b1000; #10
a=4'b0000; #10
a=4'b0000;
end
endmodule
