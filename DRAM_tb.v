`timescale 1ns / 1ps

module DRAM_tb();
    reg clk;
    reg we_a, we_b;
    reg enable_a, enable_b;
    reg refresh_en;
    reg [3:0] addr_a, addr_b;
    reg [15:0] data_in_a, data_in_b;
    wire [15:0] data_out_a, data_out_b;

    DRAM dut (
        .clk(clk),
        .we_a(we_a),
        .we_b(we_b),
        .enable_a(enable_a),
        .enable_b(enable_b),
        .refresh_en(refresh_en),
        .addr_a(addr_a),
        .addr_b(addr_b),
        .data_in_a(data_in_a),
        .data_in_b(data_in_b),
        .data_out_a(data_out_a),
        .data_out_b(data_out_b)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
        we_a = 0; we_b = 0;
        enable_a = 0; enable_b = 0;
        refresh_en = 0;
        addr_a = 4'd0; addr_b = 4'd0;
        data_in_a = 16'h0; data_in_b = 16'h0;

        #10;

        we_a = 1; addr_a = 4'd4; data_in_a = 16'hA5A5;
        we_b = 1; addr_b = 4'd8; data_in_b = 16'h5A5A;
        #10 we_a = 0; we_b = 0;

        enable_a = 1; addr_a = 4'd4;
        enable_b = 1; addr_b = 4'd8;
        #10 enable_a = 0; enable_b = 0;

        refresh_en = 1;
        #10 refresh_en = 0;

        we_a = 1; addr_a = 4'd2; data_in_a = 16'hFACE;
        we_b = 1; addr_b = 4'd6; data_in_b = 16'hDEAD;
        #10 we_a = 0; we_b = 0;

        enable_a = 1; addr_a = 4'd2;
        enable_b = 1; addr_b = 4'd6;
        #10 enable_a = 0; enable_b = 0;

        we_a = 1; addr_a = 4'd1; data_in_a = 16'h1111;
        we_b = 1; addr_b = 4'd15; data_in_b = 16'hFFFF;
        #10 we_a = 0; we_b = 0;

        enable_a = 1; addr_a = 4'd1;
        enable_b = 1; addr_b = 4'd15;
        #10 enable_a = 0; enable_b = 0;

        we_a = 1; addr_a = 4'd3; data_in_a = 16'hDEAD;
        we_b = 1; addr_b = 4'd5; data_in_b = 16'hBEEF;
        #10 we_a = 0; we_b = 0;

        enable_a = 1; addr_a = 4'd3;
        enable_b = 1; addr_b = 4'd5;
        #10 enable_a = 0; enable_b = 0;

        refresh_en = 1;
        #10 refresh_en = 0;

        we_a = 1; addr_a = 4'd0; data_in_a = 16'h1A2B;
        we_b = 1; addr_b = 4'd7; data_in_b = 16'h3C4D;
        #10 we_a = 0; we_b = 0;

        enable_a = 1; addr_a = 4'd0;
        enable_b = 1; addr_b = 4'd7;
        #10 enable_a = 0; enable_b = 0;

        we_a = 1; addr_a = 4'd9; data_in_a = 16'hAAAA;
        we_b = 1; addr_b = 4'd10; data_in_b = 16'h5555;
        #10 we_a = 0; we_b = 0;

        enable_a = 1; addr_a = 4'd9;
        enable_b = 1; addr_b = 4'd10;
        #10 enable_a = 0; enable_b = 0;

        we_a = 1; addr_a = 4'd0; data_in_a = 16'h1234;
        we_b = 1; addr_b = 4'd15; data_in_b = 16'h5678;
        #10 we_a = 0; we_b = 0;

        enable_a = 1; addr_a = 4'd0;
        enable_b = 1; addr_b = 4'd15;
        #10 enable_a = 0; enable_b = 0;

        #10 $finish;
    end

endmodule
