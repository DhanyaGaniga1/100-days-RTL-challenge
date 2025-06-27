`timescale 10ns / 1ps
module E3_2_BCD_tb();
reg [3:0]E;
wire [3:0]B;

E3_2_BCD dut(.E(E), .B(B));
initial
begin
E=4'b0011; #10
E=4'b0100; #10
E=4'b0101; #10
E=4'b0110; #10
E=4'b0111; #10
E=4'b1000; #10
E=4'b1001; #10
E=4'b1010; #10
E=4'b1011; #10
E=4'b1100; 
end
endmodule
