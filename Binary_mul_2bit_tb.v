`timescale 10ns / 1ps

module Binary_multiplier_2bit_tb();

reg [1:0]a,b;
wire [3:0]s;

Binary_multiplier_2bit uut(.a(a), .b(b), .s(s));

initial
begin
a=2'b00; b=2'b00; #10 
a=2'b01; b=2'b01; #10 
a=2'b11; b=2'b10; #10 
a=2'b10; b=2'b01; 
end
endmodule
