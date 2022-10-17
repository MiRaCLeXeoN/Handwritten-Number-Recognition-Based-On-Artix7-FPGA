`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/09 22:14:42
// Design Name: 
// Module Name: Simulation_CPU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Simulation_CPU(
    );
    
    reg clk;
    reg uart_rxd;
    //integer i;
    
    
    CPU testCPU(.CLK(clk),
                .Go(1'b0),
                .IR1(1'b0),
                .IR2(1'b0),
                .IR3(1'b0),
                .RST(1'b0),
                .dis1(1'b0),
                .dis2(1'b0),
                .dis3(1'b0),
                .dis4(1'b0),
                .dis5(1'b0),
                .dis6(1'b0),
                .dis7(1'b0),
                .dis8(1'b0),
                .dis9(1'b0),
                .dis10(1'b0),
                .dis11(1'b0),
                .dis12(1'b0),
                .dis13(1'b0),
                .dis14(1'b0),
                .dis15(1'b0),
                .dis16(1'b0),
                .NA(),
                .SEG(),
                .uart_rxd(uart_rxd),
                .uart_txd());
   initial
    begin
        clk <= 0;
        uart_rxd <= 1;
    end
    
    always
    begin
        #1 clk = ~clk;
    end
    
    always
        begin
            #80 uart_rxd <= ~uart_rxd;
        end
    
endmodule
