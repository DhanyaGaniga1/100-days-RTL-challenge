`timescale 10ns / 1ps

module encoder_4x3_tb();
reg [3:0]d;
wire [1:0]y;

encoder_4x3 uut(.d(d), .y(y));

initial
begin

d=4'b0001; #10
d=4'b0010; #10
d=4'b0100; #10
d=4'b1000; 

end
endmodule
