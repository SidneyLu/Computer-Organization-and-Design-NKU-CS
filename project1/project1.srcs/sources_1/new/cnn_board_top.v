`timescale 1ns / 1ps

module cnn_board_top(
    input         clk,
    input         resetn,
    input  [7:0]  sw,
    input         key_step0,
    input         key_step1,
    output        led_done,
    output        lcd_rst,
    output        lcd_cs,
    output        lcd_rs,
    output        lcd_wr,
    output        lcd_rd,
    inout  [15:0] lcd_data_io,
    output        lcd_bl_ctr,
    inout         ct_int,
    inout         ct_sda,
    output        ct_scl,
    output        ct_rstn
);

    function [39:0] make_index_name;
        input [15:0] prefix;
        input integer index_value;
        reg [7:0] tens_ascii;
        reg [7:0] ones_ascii;
        begin
            tens_ascii = 8'h30 + (index_value / 10);
            ones_ascii = 8'h30 + (index_value % 10);
            make_index_name = {prefix, tens_ascii, ones_ascii, 8'h20};
        end
    endfunction

    function [31:0] demo_sample_value;
        input [5:0] index_value;
        begin
            case (index_value)
                6'd0:  demo_sample_value = 32'd12;
                6'd1:  demo_sample_value = 32'd18;
                6'd2:  demo_sample_value = 32'd20;
                6'd3:  demo_sample_value = 32'd16;
                6'd4:  demo_sample_value = 32'd10;
                6'd5:  demo_sample_value = 32'd14;
                6'd6:  demo_sample_value = 32'd22;
                6'd7:  demo_sample_value = 32'd26;
                6'd8:  demo_sample_value = 32'd18;
                6'd9:  demo_sample_value = 32'd12;
                6'd10: demo_sample_value = 32'd10;
                6'd11: demo_sample_value = 32'd24;
                6'd12: demo_sample_value = 32'd30;
                6'd13: demo_sample_value = 32'd20;
                6'd14: demo_sample_value = 32'd14;
                6'd15: demo_sample_value = 32'd8;
                6'd16: demo_sample_value = 32'd16;
                6'd17: demo_sample_value = 32'd28;
                6'd18: demo_sample_value = 32'd24;
                6'd19: demo_sample_value = 32'd18;
                6'd20: demo_sample_value = 32'd6;
                6'd21: demo_sample_value = 32'd12;
                6'd22: demo_sample_value = 32'd20;
                6'd23: demo_sample_value = 32'd22;
                6'd24: demo_sample_value = 32'd16;
                6'd25: demo_sample_value = 32'h000000ff;
                6'd26: demo_sample_value = 32'h00000000;
                6'd27: demo_sample_value = 32'h00000001;
                6'd28: demo_sample_value = 32'h000000fe;
                6'd29: demo_sample_value = 32'h00000000;
                6'd30: demo_sample_value = 32'h00000002;
                6'd31: demo_sample_value = 32'h000000ff;
                6'd32: demo_sample_value = 32'h00000000;
                6'd33: demo_sample_value = 32'h00000001;
                default: demo_sample_value = 32'd0;
            endcase
        end
    endfunction

    function [31:0] sign_extend_u8;
        input [7:0] value;
        begin
            sign_extend_u8 = {{24{value[7]}}, value};
        end
    endfunction

    reg         display_valid;
    reg  [39:0] display_name;
    reg  [31:0] display_value;
    wire [5:0]  display_number;
    wire        input_valid;
    wire [31:0] input_value;

    wire        cfg_we;
    wire [5:0]  cfg_addr;
    wire [31:0] cfg_data;

    wire [199:0] pixels_flat;
    wire [71:0]  kernel_flat;
    wire [31:0]  pool_out_flat;
    wire         core_done;

    reg         key_step0_d;
    reg         key_step1_d;
    reg         demo_active;
    reg  [5:0]  demo_index;
    reg  [31:0] last_input_value;
    reg         done_latched;
    reg  [2:0]  op_valid_pipe;

    wire        start_press;
    wire        demo_press;
    wire        core_start_pulse;
    wire [5:0]  current_cfg_addr;
    wire [31:0] current_cfg_data;
    wire [31:0] status_word;
    wire [31:0] latency_word;
    wire        core_busy;

    assign start_press = key_step0_d & ~key_step0;
    assign demo_press = key_step1_d & ~key_step1;
    assign core_start_pulse = start_press & ~demo_active;

    assign cfg_we = demo_active | input_valid;
    assign cfg_addr = demo_active ? demo_index : sw[5:0];
    assign cfg_data = demo_active ? demo_sample_value(demo_index) : input_value;
    assign current_cfg_addr = cfg_addr;
    assign current_cfg_data = cfg_data;
    assign core_busy = |op_valid_pipe;
    assign status_word = {16'd0, demo_active, core_busy, done_latched, core_start_pulse, current_cfg_addr, sw[5:0]};
    assign latency_word = {23'd0, done_latched, 8'd3};
    assign led_done = done_latched;

    cnn_cfg_regs u_cfg_regs (
        .clk        (clk),
        .resetn     (resetn),
        .cfg_we     (cfg_we),
        .cfg_addr   (cfg_addr),
        .cfg_data   (cfg_data),
        .pixels_flat(pixels_flat),
        .kernel_flat(kernel_flat)
    );

    cnn_chain_core_opt u_core_opt (
        .clk         (clk),
        .resetn      (resetn),
        .start       (core_start_pulse),
        .pixels_flat (pixels_flat),
        .kernel_flat (kernel_flat),
        .done        (core_done),
        .pool_out_flat(pool_out_flat)
    );

    lcd_module u_lcd_module (
        .clk           (clk),
        .resetn        (resetn),
        .display_valid (display_valid),
        .display_name  (display_name),
        .display_value (display_value),
        .display_number(display_number),
        .input_valid   (input_valid),
        .input_value   (input_value),
        .lcd_rst       (lcd_rst),
        .lcd_cs        (lcd_cs),
        .lcd_rs        (lcd_rs),
        .lcd_wr        (lcd_wr),
        .lcd_rd        (lcd_rd),
        .lcd_data_io   (lcd_data_io),
        .lcd_bl_ctr    (lcd_bl_ctr),
        .ct_int        (ct_int),
        .ct_sda        (ct_sda),
        .ct_scl        (ct_scl),
        .ct_rstn       (ct_rstn)
    );

    always @(posedge clk) begin
        if (!resetn) begin
            key_step0_d <= 1'b1;
            key_step1_d <= 1'b1;
            demo_active <= 1'b0;
            demo_index <= 6'd0;
            last_input_value <= 32'd0;
            done_latched <= 1'b0;
            op_valid_pipe <= 3'b000;
        end else begin
            key_step0_d <= key_step0;
            key_step1_d <= key_step1;
            op_valid_pipe <= {op_valid_pipe[1:0], core_start_pulse};

            if (core_start_pulse || demo_press) begin
                done_latched <= 1'b0;
            end else if (core_done) begin
                done_latched <= 1'b1;
            end

            if (demo_press && !demo_active) begin
                demo_active <= 1'b1;
                demo_index <= 6'd0;
            end else if (demo_active) begin
                if (demo_index == 6'd33) begin
                    demo_active <= 1'b0;
                    demo_index <= 6'd0;
                end else begin
                    demo_index <= demo_index + 6'd1;
                end
            end

            if (cfg_we) begin
                last_input_value <= current_cfg_data;
            end
        end
    end

    always @(*) begin
        display_valid = 1'b1;
        display_name = 40'd0;
        display_value = 32'd0;

        if ((display_number >= 6'd1) && (display_number <= 6'd25)) begin
            display_name = make_index_name("PX", display_number - 1);
            display_value = {24'd0, pixels_flat[(display_number - 1)*8 +: 8]};
        end else if ((display_number >= 6'd26) && (display_number <= 6'd34)) begin
            display_name = make_index_name("KR", display_number - 6'd26);
            display_value = sign_extend_u8(kernel_flat[(display_number - 6'd26)*8 +: 8]);
        end else begin
            case (display_number)
                6'd35: begin
                    display_name = "OUT0 ";
                    display_value = {24'd0, pool_out_flat[7:0]};
                end
                6'd36: begin
                    display_name = "OUT1 ";
                    display_value = {24'd0, pool_out_flat[15:8]};
                end
                6'd37: begin
                    display_name = "OUT2 ";
                    display_value = {24'd0, pool_out_flat[23:16]};
                end
                6'd38: begin
                    display_name = "OUT3 ";
                    display_value = {24'd0, pool_out_flat[31:24]};
                end
                6'd39: begin
                    display_name = "ADDR ";
                    display_value = {26'd0, current_cfg_addr};
                end
                6'd40: begin
                    display_name = "LAST ";
                    display_value = last_input_value;
                end
                6'd41: begin
                    display_name = "STAT ";
                    display_value = status_word;
                end
                6'd42: begin
                    display_name = "LATCY";
                    display_value = latency_word;
                end
                6'd43: begin
                    display_name = "RSV43";
                    display_value = 32'd0;
                end
                6'd44: begin
                    display_name = "RSV44";
                    display_value = 32'd0;
                end
                default: begin
                    display_valid = 1'b0;
                    display_name = 40'd0;
                    display_value = 32'd0;
                end
            endcase
        end
    end

endmodule
