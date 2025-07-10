`timescale 1ns / 1ps

module Mealy_state_machine_tb();
reg x,clk;
wire y;
Mealy_state_machine dut(.x(x), .clk(clk), .y(y));

initial 
begin
clk=1'b0;
forever #5 clk=~clk;
end

initial 
begin
x=1; #10 
x=1; #10 
x=0; #10 
x=1; #10 
x=0; #10 
x=1; #10 
x=0; #10 
x=1; #10 
x=0; #10 
x=1; #10 
x=1; #10 ;

$stop;
end
endmodule

