`timescale 1ns / 1ps
module uart_device(
    input sys_clk,
    input sys_rst_n,
    input recv_int,
    input send_int,
    input uart_rxd,
    input [31:0] target_addr,
    input [31:0] send_4bytes_data,
    output uart_txd,
    output reg hold_clk,
    output ram_write,
    output [31:0] recv_4bytes_data,
    output [31:0] ram_addr);

    localparam RECV_4BYTES_NUM = 16'd784;
//    localparam RECV_4BYTES_NUM = 16'd10;
    localparam SEND_4BYTES_NUM = 16'd10;

    wire [7:0] recv_byte_data;
    wire recv_byte_done;
    wire recv_4bytes_done;
    wire send_4bytes_done;
    wire uart_tx_busy;
    wire uart_en;
    wire [7:0] uart_din;

    reg [15:0] recv_4bytes_count;
    reg [15:0] send_4bytes_count;
    reg recv_all_done;
    reg send_all_done;
    reg [31:0] now_write_in_addr;
    reg [31:0] now_read_out_addr;
    reg ok_to_cache_send;
    
    initial
    begin
        recv_4bytes_count<=0;
        send_4bytes_count<=0;
        recv_all_done<=0;
        send_all_done<=0;
        now_write_in_addr<=0;
        now_read_out_addr<=0;
        ok_to_cache_send<=0;
        hold_clk <= 0;
    end

    assign ram_addr = recv_int ? now_write_in_addr : now_read_out_addr;

    uart_recv uart_recv_u (
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .uart_rxd(uart_rxd),
        .uart_data(recv_byte_data),
        .uart_done(recv_byte_done)); 

    uart_send uart_send_u (
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .uart_en(uart_en),
        .uart_din(uart_din),
        .uart_txd(uart_txd),
        .uart_tx_busy(uart_tx_busy));
    
    uart_recv_cache uart_recv_cache_u(
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .recv_byte_data(recv_byte_data),
        .recv_byte_done(recv_byte_done),
        .recv_4bytes_data(recv_4bytes_data),
        .recv_4bytes_done(recv_4bytes_done)); 

    uart_send_cache uart_send_cache_u(
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .send_4bytes_data(send_4bytes_data),
        .ok_to_cache_send(ok_to_cache_send),
        .send_busy(uart_tx_busy),
        .send_en(uart_en),
        .send_byte_data(uart_din),
        .send_4bytes_done(send_4bytes_done));

    //set hold_clk
    always @(negedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n) begin
            hold_clk <= 1'b0;
        end
        else if(recv_int & recv_all_done) begin
            hold_clk <= 1'b0;
        end
        else if(send_int & send_all_done) begin
            hold_clk <= 1'b0;
        end
        else if(recv_int & ~send_all_done) begin
            hold_clk <= 1'b1;
        end
        else if(send_int & ~send_all_done) begin
            hold_clk <= 1'b1;
        end
        else begin
            hold_clk <= hold_clk;
        end
    end

    //capture posedge of recv_int and send_int
    //but cannot use this method for initializing hold_clk
    //because it needs an extra cycle to recognize the posedge
    wire recv_int_posedge;
    wire send_int_posedge;
    posedge_capturer posedge_capturer1(.sys_clk(sys_clk),.sys_rst_n(sys_rst_n),.signal(recv_int),.signal_posedge(recv_int_posedge));
    posedge_capturer posedge_capturer2(.sys_clk(sys_clk),.sys_rst_n(sys_rst_n),.signal(send_int),.signal_posedge(send_int_posedge));

    wire recv_4bytes_done_posedge;
    wire send_4bytes_done_posedge;
    posedge_capturer posedge_capturer3(.sys_clk(sys_clk),.sys_rst_n(sys_rst_n),.signal(recv_4bytes_done),.signal_posedge(recv_4bytes_done_posedge));
    posedge_capturer posedge_capturer4(.sys_clk(sys_clk),.sys_rst_n(sys_rst_n),.signal(send_4bytes_done),.signal_posedge(send_4bytes_done_posedge));

    //set recv_4bytes_count and recv_all_done
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n) begin
            recv_4bytes_count <= 16'b0;
            recv_all_done <= 1'b0;
        end
        else if(recv_int && recv_4bytes_count==RECV_4BYTES_NUM) begin
            recv_4bytes_count <= 16'b0;
            recv_all_done <= 1'b1;  //last for only 1 cycle
        end
        else if(recv_int && recv_4bytes_done_posedge) begin
            recv_4bytes_count <= recv_4bytes_count + 16'd1;
            recv_all_done <= 1'b0;
        end
        else begin
            recv_4bytes_count <= recv_4bytes_count;
            recv_all_done <= 1'b0;
        end
    end

    //set send_4bytes_count and send_all_done
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n) begin
            send_4bytes_count <= 16'b0;
            send_all_done <= 1'b0;
        end
        else if(send_int && send_4bytes_count==SEND_4BYTES_NUM) begin
            send_4bytes_count <= 16'b0;
            send_all_done <= 1'b1;
        end
        else if(send_int && send_4bytes_done_posedge) begin
            send_4bytes_count <= send_4bytes_count + 16'd1;
            send_all_done <= 1'b0;
        end
        else begin
            send_4bytes_count <= send_4bytes_count;
            send_all_done <= 1'b0;
        end
    end

    //ser ram_write
    //need ram_write_done to sync
    assign ram_write = recv_int & recv_4bytes_done_posedge;
//    always @(posedge sys_clk or negedge sys_rst_n) begin
//        if(!sys_rst_n) begin
//            ram_write <= 1'b0;
//        end
//        else if(recv_int & recv_4bytes_done_posedge) begin
//            ram_write <= 1'b1;
//        end
//        else begin
//            ram_write <= 1'b0;
//        end
//    end

    //set now_write_in_addr
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n) begin
            now_write_in_addr <= 32'b0;
        end
        else if(recv_int & recv_int_posedge) begin
            now_write_in_addr <= target_addr[31:0];
        end
        else if(recv_int & recv_4bytes_done_posedge) begin
            now_write_in_addr <= now_write_in_addr + 32'd4;
        end
        else begin
            now_write_in_addr <= now_write_in_addr;
        end
    end

    //set now_read_out_addr and ok_to_cache_send
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n) begin
            now_read_out_addr <= 32'b0;
            ok_to_cache_send <= 1'b0;
        end
        else if(send_int & send_int_posedge) begin
            now_read_out_addr <= target_addr[31:0];
            ok_to_cache_send <= 1'b1;
        end
        else if((send_int & send_4bytes_done_posedge)&&(send_4bytes_count<16'd9)) begin
            now_read_out_addr <= now_read_out_addr + 32'd4;
            ok_to_cache_send <= 1'b1;   //last for only 1 cycle
        end
        else begin
            now_read_out_addr <= now_read_out_addr;
            ok_to_cache_send <= 1'b0;
        end
    end
endmodule
