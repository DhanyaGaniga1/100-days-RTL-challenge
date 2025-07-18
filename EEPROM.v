`timescale 1ns / 1ps

module EEPROM(
    input [3:0] addr,
    input we,
    input erase_enable,
    input [7:0] write_data,
    output reg [7:0] data
    );
    reg [15:0] eeprom [15:0];
    
    initial begin
    eeprom[0]=16'h10;
    eeprom[1]=16'h11;
    eeprom[2]=16'h12;
    eeprom[3]=16'h13;
    eeprom[4]=16'h14;
    eeprom[5]=16'h15;
    eeprom[6]=16'h16;
    eeprom[7]=16'h17;
    eeprom[8]=16'h18;
    eeprom[9]=16'h19;
    eeprom[10]=16'h1a;
    eeprom[11]=16'h1b;
    eeprom[12]=16'h1c;
    eeprom[13]=16'h1d;
    eeprom[14]=16'h1e;
    eeprom[15]=16'h1f;
    end
    
    always @(*) begin
    if(erase_enable) begin
    eeprom[addr]=16'h00;
    end
    else if (we) begin
    eeprom[addr]=write_data;
    end
    else begin
    data=eeprom[addr];
    end
    end
endmodule
