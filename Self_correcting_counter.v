`timescale 1ns / 1ps

module Self_correcting_counter(clk,rst,q);
input clk,rst;
output reg [3:0]q;
always@(posedge clk or posedge rst)
begin
if(rst)
begin
q<=4'b0000;
end 
else 

begin
if (q<4'b1111)
begin
q<=q+1;
end
else
q<=4'b0000;
end
end
endmodule
