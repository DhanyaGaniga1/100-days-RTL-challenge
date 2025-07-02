`timescale 1ns /1ps

module SISO_tb();
reg data_in,clk;
wire data_out;
wire q0,q1,q2;
SISO dut(.data_in(data_in), .clk(clk), .data_out(data_out), .q0(q0),.q1(q1),.q2(q2));

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
data_in=1'b0; #10
data_in=1'b0; #10
data_in=1'b0; #10
data_in=1'b0; 
end

endmodule
