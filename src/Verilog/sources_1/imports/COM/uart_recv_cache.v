`timescale 1ns / 1ps
module uart_recv_cache(
    input sys_clk,
    input sys_rst_n,
    input [7:0] recv_byte_data,
    input recv_byte_done,
    output reg [31:0] recv_4bytes_data,
    output reg recv_4bytes_done);

    reg [3:0] recv_bytes_count;
    reg [31:0] data_cache;
    reg data_cache_ready;

    initial
    begin
        recv_bytes_count <= 0;
    end
    //capture posedge of recv_byte_done
    reg recv_byte_done_d0;
    reg recv_byte_done_d1;
    wire recv_byte_done_posedge;
    assign recv_byte_done_posedge = recv_byte_done_d0 & ~recv_byte_done_d1;
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n) begin
            recv_byte_done_d0 <= 1'b0;
            recv_byte_done_d1 <= 1'b0;
        end
        else begin
            recv_byte_done_d0 <= recv_byte_done;
            recv_byte_done_d1 <= recv_byte_done_d0;
        end
    end

    //set recv_bytes_count
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n) begin
            recv_bytes_count <= 4'b0;
        end
        else if(recv_bytes_count == 4'd4) begin
            recv_bytes_count <= 4'd0;
        end
        else if(recv_byte_done_posedge) begin
            recv_bytes_count <= recv_bytes_count + 4'd1;
        end
        else begin
            recv_bytes_count <= recv_bytes_count;
        end
    end

    //set data_cache and data_cache_ready
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n) begin
            data_cache <= 32'b0;
            data_cache_ready <= 1'b0;
        end
        else if(recv_byte_done_posedge) begin
            case(recv_bytes_count)
//                4'd0: begin
//                    data_cache <= data_cache;
//                    data_cache_ready <= 1'b0;
//                end
                4'd0: begin
                    data_cache[31:24] <= recv_byte_data;    //order reversed
                    data_cache_ready <= 1'b0;
                end
                4'd1: begin
                    data_cache[23:16] <= recv_byte_data;
                    data_cache_ready <= 1'b0;
                end
                4'd2: begin
                    data_cache[15:8] <= recv_byte_data;
                    data_cache_ready <= 1'b0;
                end
                4'd3: begin
                    data_cache[7:0] <= recv_byte_data;
                    data_cache_ready <= 1'b1;
                end
                default: begin
                    data_cache <= data_cache;
                    data_cache_ready <= data_cache_ready;
                end
            endcase
        end
        else begin
            data_cache <= data_cache;
            data_cache_ready <= data_cache_ready;
        end
    end

    //set recv_4bytes_data
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n) begin
            recv_4bytes_data <= 32'b0;
            recv_4bytes_done <= 1'b0;
        end
        else if(data_cache_ready) begin
            recv_4bytes_done <= 1'b1;
            recv_4bytes_data <= data_cache;
        end
        else if(!data_cache_ready) begin
            recv_4bytes_done <= 1'b0;
            recv_4bytes_data <= recv_4bytes_data;
        end
        else begin
            recv_4bytes_data <= recv_4bytes_data;
            recv_4bytes_done <= recv_4bytes_done;
        end
    end
endmodule


                    
