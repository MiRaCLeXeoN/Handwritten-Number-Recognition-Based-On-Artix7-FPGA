`timescale 1ns / 1ps
module negedge_capturer(
    input sys_clk,
    input sys_rst_n,
    input signal,
    output signal_negedge);

    reg signal_d0;
    assign signal_negedge = signal_d0 & ~signal;
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n) begin
            signal_d0 <= 1'b0;
        end
        else begin
            signal_d0 <= signal;
        end
    end
endmodule