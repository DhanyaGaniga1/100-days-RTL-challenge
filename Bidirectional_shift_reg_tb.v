`timescale 1ns / 1ps
module Bidirectional_shift_reg_tb();
reg clk,reset,shift,data_in;
wire [3:0]data_out;
Bidirectional_shift_reg dut(.clk(clk), .reset(reset), .shift(shift), .data_in(data_in), .data_out(data_out));
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
reset=1;
shift=0;
data_in=0;

#10 reset=0;
#10 shift=0;
#10 data_in=1;
#10 data_in=0;
#10 data_in=0;
#10 data_in=0;

#20 reset=1;
#10 reset=0;
#10 shift=1;
#10 data_in=1;
#10 data_in=0;
#10 data_in=0;
#10 data_in=0;
end
endmodule
