`timescale 1ns / 1ps

module Sequence_detector_mealy_tb();
reg x,clk;
wire y;
Sequence_detector_mealy dut (.x(x), .clk(clk), .y(y));

initial 
begin
clk=1'b0;
forever #5 
clk=~clk;
end

initial 
begin

x=0; #10 
x=1; #10
x=1; #10
x=1; #10
x=0; #10
x=1; #10
x=1; #10
x=0; #10
x=1; #10
x=0; #10
x=1; #10
x=1; #10
x=0; #200

$finish;
end
endmodule
