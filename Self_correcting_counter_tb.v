`timescale 1ns / 1ps

module Self_correcting_counter_tb();
reg clk,rst;
wire[3:0]q;
Self_correcting_counter dut(.clk(clk), .rst(rst), .q(q));

initial 
begin
clk=1'b0;
forever #5 clk=~clk;
end

initial 
begin
rst=1; #5 
rst=0;  #200
$finish;
end
endmodule
