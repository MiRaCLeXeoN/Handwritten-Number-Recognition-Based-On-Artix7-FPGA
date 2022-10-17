`timescale 1ns / 1ps
module uart_send_cache(
    input sys_clk,
    input sys_rst_n,
    input [31:0] send_4bytes_data,
    input ok_to_cache_send,
    input send_busy,

    output reg send_en,
    output reg [7:0] send_byte_data,
    output reg send_4bytes_done);

    reg [31:0] data_cache;
    reg [3:0] send_bytes_count;
    reg cache_done;
    
    initial
    begin
        send_bytes_count <= 0;
        cache_done <= 0;
    end

    wire ok_to_cache_send_posedge;
    wire cache_done_posedge;
    posedge_capturer posedge_capturer1(.sys_clk(sys_clk),.sys_rst_n(sys_rst_n),.signal(ok_to_cache_send),.signal_posedge(ok_to_cache_send_posedge));
    posedge_capturer posedge_capturer2(.sys_clk(sys_clk),.sys_rst_n(sys_rst_n),.signal(cache_done),.signal_posedge(cache_done_posedge));

    wire send_busy_negedge;
    negedge_capturer negedge_capturer1(.sys_clk(sys_clk),.sys_rst_n(sys_rst_n),.signal(send_busy),.signal_negedge(send_busy_negedge));

    //set send_bytes_count, send_4bytes_done, send_next
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n) begin
            send_bytes_count <= 4'b0;
            send_4bytes_done <= 1'b0;
        end
        else if(send_4bytes_done) begin
            send_bytes_count <= send_bytes_count;
            send_4bytes_done <= 1'b0;
        end
        else if(send_busy_negedge) begin
            send_bytes_count <= send_bytes_count + 4'b1;
            send_4bytes_done <= 1'b0;
        end
        else if(send_bytes_count==4'd4) begin   //last for only one cycle
            send_bytes_count <= 4'b0;
            send_4bytes_done <= 1'b1;
        end
        else begin
            send_bytes_count <= send_bytes_count;
            send_4bytes_done <= send_4bytes_done;
        end
    end

    //set data_cache
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n) begin
            data_cache <= 32'b0;
            cache_done <= 1'b0;
        end
        else if(ok_to_cache_send_posedge) begin
            data_cache <= send_4bytes_data;
            cache_done <= 1'b1;
        end
        else if(send_4bytes_done) begin
            data_cache <= data_cache;
            cache_done <= 1'b0;
        end
        else begin
            data_cache <= data_cache;
            cache_done <= cache_done;
        end
    end

    //set send_byte_data
    //may have some problems
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n) begin
            send_byte_data <= 8'b0;
        end
        else if(cache_done) begin
            case(send_bytes_count)
                4'd0: begin
                    send_byte_data <= data_cache[31:24];
                end
                4'd1: begin
                    send_byte_data <= data_cache[23:16];
                end
                4'd2: begin
                    send_byte_data <= data_cache[15:8];
                end
                4'd3: begin
                    send_byte_data <= data_cache[7:0];
                end
                default: begin
                    send_byte_data <= send_byte_data;
                end
            endcase
        end
        else begin
            send_byte_data <= send_byte_data;
        end
    end

    //set send_en
    reg send_ready;
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n) begin
            send_en <= 1'b0;
            send_ready <= 1'b0;
        end
        else if(send_ready) begin
            send_en <= 1'b1;
            send_ready <=1'b0;
        end
        else if(cache_done_posedge) begin   //first transmission
            send_en <= 1'b0;
            send_ready <= 1'b1;
        end
        else if(send_busy_negedge && (send_bytes_count < 4'd3)) begin   //next 3 transmission
            send_en <= 1'b0;
            send_ready <= 1'b1;
        end
        else begin
            send_en <= send_en;
            send_ready <= send_ready;
        end
    end

    
    



endmodule