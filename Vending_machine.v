`timescale 1ns / 1ps
module Vending_machine(
input clk,reset,
input [3:0] deposited_amount,
input [1:0] item_code,
output reg dispense,
output reg [3:0] balance
);
reg [3:0] item_price;
    
always @(*) begin
case(item_code)
   2'b00: item_price = 4'd5;
   2'b01: item_price = 4'd7;
   2'b10: item_price = 4'd10;
   2'b11: item_price = 4'd12;
   default: item_price = 4'd0;
endcase
end
    
always @(posedge clk or posedge reset) 
begin
if(reset) 
begin
dispense <= 0;
balance <= 4'd0;
end 

else 
begin
if(deposited_amount >= item_price) 
begin
dispense <= 1;
balance <= deposited_amount - item_price;
end 

else 
begin
dispense <= 0;
balance <= deposited_amount;
end
end
end
endmodule
