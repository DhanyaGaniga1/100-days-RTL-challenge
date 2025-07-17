`timescale 1ns / 1ps
module Vending_machine_tb();
reg clk,reset;
reg [3:0] deposited_amount;
reg [1:0] item_code;

wire dispense;
wire [3:0] balance;

Vending_machine dut(.clk(clk), .reset(reset), 
                    .deposited_amount(deposited_amount), .item_code(item_code), 
                    .dispense(dispense),  .balance(balance)
);
always #5 clk=~clk;  
     
initial 
begin
clk=0;
reset=1;    
deposited_amount=0;    
item_code=0;    #5 
    
reset=0;
deposited_amount=4'd5;
item_code=2'b00;  
#10;
    
deposited_amount=4'd3;
item_code=2'b00;  
#10;
   
deposited_amount=4'd8;
item_code=2'b00;
#10;
    
deposited_amount=4'd7;
item_code=2'b01;
#10;
    
deposited_amount=4'd5;
item_code=2'b01;
#10;
    
deposited_amount=4'd10;
item_code=2'b01;
#10;
    
deposited_amount=4'd10;
item_code=2'b10;
#10;
    
deposited_amount=4'd4;
item_code=2'b10;
#10;
    
deposited_amount=4'd12;
item_code=2'b10;
#10;
    
deposited_amount=4'd12;
item_code=2'b11;
#10;
    
deposited_amount=4'd15;
item_code=2'b11;
#10;
    
deposited_amount=4'd11;
item_code=2'b11;
#10;
 
$finish;
end
endmodule 
