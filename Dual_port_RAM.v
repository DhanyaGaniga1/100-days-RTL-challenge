`timescale 1ns / 1ps

module Dual_port_RAM  #(
            parameter [7:0]DATA_WIDTH = 8,  
            parameter [3:0]ADDR_WIDTH = 4   
             )
    (
    input  clk,we_a,we_b,                 
    input  [ADDR_WIDTH-1:0] addr_a,addr_b, 
    input  [DATA_WIDTH-1:0] data_in_a,data_in_b, 
    output reg [DATA_WIDTH-1:0] data_out_a, data_out_b 
    );

    reg [DATA_WIDTH-1:0] ram [2**ADDR_WIDTH-1:0]; 
    integer i;
    
    initial 
    begin
    for(i=0; i<(1<<ADDR_WIDTH); i=i+1)
    
    begin
    ram[i]=0;
    end 
    data_out_a=0;
    data_out_b=0;
    end

    always @(posedge clk) 
    begin
        if (we_a) begin
            ram[addr_a] <= data_in_a;
        end
        data_out_a <= ram[addr_a];
    end

    always @(posedge clk) 
    begin
        if (we_b) begin
            ram[addr_b] <= data_in_b; 
        end
        data_out_b <= ram[addr_b]; 
    end
endmodule
