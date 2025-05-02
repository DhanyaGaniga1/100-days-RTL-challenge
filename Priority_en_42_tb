`timescale 10ns / 1ps

module priority_en_4x2_tb();
reg [3:0]d;
wire [1:0]y;

priority_en_4x2 uut(.d(d), .y(y));

initial
begin

d=4'b0000;#10
d=4'b0001;#10
d=4'b0010;#10
d=4'b0011;#10
d=4'b0100;#10
d=4'b0101;#10
d=4'b0110;#10
d=4'b0111;#10
d=4'b1000;#10
d=4'b1001;

end
endmodule
