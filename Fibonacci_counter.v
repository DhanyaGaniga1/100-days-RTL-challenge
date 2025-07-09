`timescale 1ns / 1ps

module Fibonacci_counter(clk,rst,f);
input clk,rst;
output [15:0]f;
reg [15:0]f1,f2;

always@(posedge clk or negedge rst)
begin

if(~rst)
begin
f1<=0;
f2<=1;
end

else

begin
f1<=f2;
f2<=f;
end

end
assign f=f1+f2;
endmodule
