`timescale 1ns / 1ps
module uart_recv(
    input sys_clk,
    input sys_rst_n,
    input uart_rxd,
    output reg [7:0] uart_data,
    output reg uart_done);

    parameter CLK_FREQUENCY = 10_000_000;
    parameter UART_BPS = 115200;
    localparam BPS_CNT = CLK_FREQUENCY / UART_BPS; 

    reg uart_rxd_d0;
    reg uart_rxd_d1;
    reg rx_flag;
    reg [3:0] rx_cnt;   //count 0-9, 4 bits are enough
    reg [15:0] clk_cnt;  //count 434 cycles for 1 bit transmission, 8 bits are enough
    reg [7:0] rx_data;
    
    initial
    begin
        rx_cnt <= 0;
        clk_cnt <= 0;
    end

    //set start_flag
    wire start_flag;

    assign start_flag = ~uart_rxd_d0 & uart_rxd_d1;

    //d0 is used for held the present state, and d1 is for the previous one
    //combing these two we can figure out posedges or negedges
    always @(posedge sys_clk or negedge sys_rst_n) begin
        //reset
        if(!sys_rst_n) begin
            uart_rxd_d0 <= 1'b0;
            uart_rxd_d1 <= 1'b0;
        end
        else begin
            uart_rxd_d0 <= uart_rxd;
            uart_rxd_d1 <= uart_rxd_d0;
        end
    end

    //set rx_flag
    always @(posedge sys_clk or negedge sys_rst_n) begin
        //reset
        if(!sys_rst_n) 
            rx_flag <= 1'b0;
        else begin
            if(start_flag)  //transmission start
                rx_flag <= 1;
            else if(rx_cnt==4'd9 && clk_cnt == BPS_CNT/2)   //transmission complete
                rx_flag <= 1'b0;
            else
                rx_flag <= rx_flag;
        end
    end

    //set clk_cnt
    always @(posedge sys_clk or negedge sys_rst_n) begin
        //reset
        if(!sys_rst_n) 
            clk_cnt <= 9'd0;
        else if(rx_flag) begin
            if(clk_cnt < BPS_CNT - 1)
                clk_cnt <= clk_cnt + 1'b1;
            else
                clk_cnt <= 9'd0;
        end
        else
            clk_cnt <= 9'd0;
    end

    //set rx_cnt
    always @(posedge sys_clk or negedge sys_rst_n) begin
        //reset
        if(!sys_rst_n) 
            rx_cnt <= 4'd0;
        else if(rx_flag) begin
            if(clk_cnt == BPS_CNT - 1)
                rx_cnt <= rx_cnt + 1'b1;
            else
                rx_cnt <= rx_cnt;
        end
        else
            rx_cnt <= 4'd0;
    end

    //set rx_data
    always @(posedge sys_clk or negedge sys_rst_n) begin
        //reset
        if(!sys_rst_n) 
            rx_data <= 8'd0;
        else if(rx_flag) begin
            if(clk_cnt == BPS_CNT / 2) begin //choose the middle time to capture to ensure the accuracy
                case (rx_cnt)
                    4'd1 : rx_data[0] <= uart_rxd_d1;
                    4'd2 : rx_data[1] <= uart_rxd_d1;
                    4'd3 : rx_data[2] <= uart_rxd_d1;
                    4'd4 : rx_data[3] <= uart_rxd_d1;
                    4'd5 : rx_data[4] <= uart_rxd_d1;
                    4'd6 : rx_data[5] <= uart_rxd_d1;
                    4'd7 : rx_data[6] <= uart_rxd_d1;
                    4'd8 : rx_data[7] <= uart_rxd_d1;
                    default: ;
                endcase
            end
            else 
                rx_data <= rx_data;
        end
        else
            rx_data <= 8'd0;
    end

    //set uart_data and uart_done
    always @(posedge sys_clk or negedge sys_rst_n) begin
        //reset
        if(!sys_rst_n) begin
            uart_data <= 8'd0;
            uart_done <= 1'b0;
        end
        else if(rx_cnt == 4'd9) begin
            uart_data <= rx_data;
            uart_done <= 1'b1;
        end
        else begin
            uart_data <= 8'd0;
            uart_done <= 1'b0;
        end
    end
endmodule
