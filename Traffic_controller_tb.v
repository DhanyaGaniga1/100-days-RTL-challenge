`timescale 1ns / 1ps
module Traffic_controller_tb();
reg clk;
reg rst;
wire [2:0]east;
wire [2:0]west;
wire [2:0]north;
wire [2:0]south;
Traffic_controller dut(.clk(clk), .rst(rst), .east(east), .west(west), .north(north), .south(south));

initial begin
clk=0;
rst=1;
#10 rst=0;
end

always begin
#5 clk=~clk;
end
endmodule
