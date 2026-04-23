`timescale 1ns / 1ps

module tb_cnn_board_top;

    localparam [31:0] EXPECTED_PACKED = 32'h052A001F;

    reg         clk;
    reg         resetn;
    reg  [7:0]  sw;
    reg         key_step0;
    reg         key_step1;

    wire        led_done;
    wire        lcd_rst;
    wire        lcd_cs;
    wire        lcd_rs;
    wire        lcd_wr;
    wire        lcd_rd;
    wire [15:0] lcd_data_io;
    wire        lcd_bl_ctr;
    wire        ct_int;
    wire        ct_sda;
    wire        ct_scl;
    wire        ct_rstn;

    integer errors;
    integer idx;
    integer opt_cycle;

    cnn_board_top dut (
        .clk        (clk),
        .resetn     (resetn),
        .sw         (sw),
        .key_step0  (key_step0),
        .key_step1  (key_step1),
        .led_done   (led_done),
        .lcd_rst    (lcd_rst),
        .lcd_cs     (lcd_cs),
        .lcd_rs     (lcd_rs),
        .lcd_wr     (lcd_wr),
        .lcd_rd     (lcd_rd),
        .lcd_data_io(lcd_data_io),
        .lcd_bl_ctr (lcd_bl_ctr),
        .ct_int     (ct_int),
        .ct_sda     (ct_sda),
        .ct_scl     (ct_scl),
        .ct_rstn    (ct_rstn)
    );

    function [31:0] sample_value;
        input [5:0] index_value;
        begin
            case (index_value)
                6'd0:  sample_value = 32'd12;
                6'd1:  sample_value = 32'd18;
                6'd2:  sample_value = 32'd20;
                6'd3:  sample_value = 32'd16;
                6'd4:  sample_value = 32'd10;
                6'd5:  sample_value = 32'd14;
                6'd6:  sample_value = 32'd22;
                6'd7:  sample_value = 32'd26;
                6'd8:  sample_value = 32'd18;
                6'd9:  sample_value = 32'd12;
                6'd10: sample_value = 32'd10;
                6'd11: sample_value = 32'd24;
                6'd12: sample_value = 32'd30;
                6'd13: sample_value = 32'd20;
                6'd14: sample_value = 32'd14;
                6'd15: sample_value = 32'd8;
                6'd16: sample_value = 32'd16;
                6'd17: sample_value = 32'd28;
                6'd18: sample_value = 32'd24;
                6'd19: sample_value = 32'd18;
                6'd20: sample_value = 32'd6;
                6'd21: sample_value = 32'd12;
                6'd22: sample_value = 32'd20;
                6'd23: sample_value = 32'd22;
                6'd24: sample_value = 32'd16;
                6'd25: sample_value = 32'h000000ff;
                6'd26: sample_value = 32'h00000000;
                6'd27: sample_value = 32'h00000001;
                6'd28: sample_value = 32'h000000fe;
                6'd29: sample_value = 32'h00000000;
                6'd30: sample_value = 32'h00000002;
                6'd31: sample_value = 32'h000000ff;
                6'd32: sample_value = 32'h00000000;
                6'd33: sample_value = 32'h00000001;
                default: sample_value = 32'd0;
            endcase
        end
    endfunction

    function [31:0] expected_status;
        input [5:0] addr_value;
        begin
            expected_status = {16'd0, 1'b0, 1'b0, 1'b1, 1'b0, addr_value, addr_value};
        end
    endfunction

    task check_equal;
        input [255:0] label;
        input [39:0]  actual;
        input [39:0]  expected;
        begin
            if (actual !== expected) begin
                errors = errors + 1;
                $display("[FAIL] %0s actual=0x%010h expected=0x%010h", label, actual, expected);
            end else begin
                $display("[PASS] %0s", label);
            end
        end
    endtask

    task check_equal32;
        input [255:0] label;
        input [31:0]  actual;
        input [31:0]  expected;
        begin
            if (actual !== expected) begin
                errors = errors + 1;
                $display("[FAIL] %0s actual=0x%08h expected=0x%08h", label, actual, expected);
            end else begin
                $display("[PASS] %0s = 0x%08h", label, actual);
            end
        end
    endtask

    task lcd_write_word;
        input [5:0]  addr;
        input [31:0] value;
        begin
            sw[5:0] = addr;
            dut.u_lcd_module.sim_pulse_input(value);
        end
    endtask

    task press_demo_load;
        begin
            @(negedge clk);
            key_step1 = 1'b0;
            @(negedge clk);
            key_step1 = 1'b1;
        end
    endtask

    task display_page_check;
        input [5:0]  page;
        input [39:0] name_expected;
        input [31:0] value_expected;
        begin
            dut.u_lcd_module.sim_set_page(page);
            #1;
            if (dut.display_name !== name_expected) begin
                errors = errors + 1;
                $display("[FAIL] display name page %0d actual=0x%010h expected=0x%010h",
                         page, dut.display_name, name_expected);
            end else begin
                $display("[PASS] display name page %0d", page);
            end
            if (dut.display_value !== value_expected) begin
                errors = errors + 1;
                $display("[FAIL] display value page %0d actual=0x%08h expected=0x%08h",
                         page, dut.display_value, value_expected);
            end else begin
                $display("[PASS] display value page %0d = 0x%08h", page, dut.display_value);
            end
        end
    endtask

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
        errors = 0;
        resetn = 1'b0;
        sw = 8'd0;
        key_step0 = 1'b1;
        key_step1 = 1'b1;

        repeat (3) @(posedge clk);
        resetn = 1'b1;

        for (idx = 0; idx < 34; idx = idx + 1) begin
            lcd_write_word(idx[5:0], sample_value(idx[5:0]));
        end

        opt_cycle = 0;
        @(negedge clk);
        key_step0 = 1'b0;
        for (idx = 1; idx <= 6; idx = idx + 1) begin
            @(posedge clk);
            #1;
            if (idx == 1) begin
                key_step0 = 1'b1;
            end
            if (dut.core_done && (opt_cycle == 0)) begin
                opt_cycle = idx;
            end
        end

        check_equal32("opt done cycle through board top", opt_cycle, 32'd3);
        check_equal32("board top pooled output", dut.pool_out_flat, EXPECTED_PACKED);
        check_equal32("led_done latched", {31'd0, led_done}, 32'd1);

        display_page_check(6'd1,  "PX00 ", 32'd12);
        display_page_check(6'd25, "PX24 ", 32'd16);
        display_page_check(6'd26, "KR00 ", 32'hffffffff);
        display_page_check(6'd34, "KR08 ", 32'h00000001);
        display_page_check(6'd35, "OUT0 ", 32'd31);
        display_page_check(6'd36, "OUT1 ", 32'd0);
        display_page_check(6'd37, "OUT2 ", 32'd42);
        display_page_check(6'd38, "OUT3 ", 32'd5);
        display_page_check(6'd39, "ADDR ", 32'd33);
        display_page_check(6'd40, "LAST ", 32'h00000001);
        display_page_check(6'd41, "STAT ", expected_status(6'd33));
        display_page_check(6'd42, "LATCY", 32'h00000103);

        repeat (2) @(posedge clk);
        resetn = 1'b0;
        repeat (2) @(posedge clk);
        resetn = 1'b1;

        press_demo_load();
        repeat (40) @(posedge clk);

        @(negedge clk);
        key_step0 = 1'b0;
        for (idx = 1; idx <= 6; idx = idx + 1) begin
            @(posedge clk);
            #1;
            if (idx == 1) begin
                key_step0 = 1'b1;
            end
        end
        check_equal32("demo load pooled output", dut.pool_out_flat, EXPECTED_PACKED);
        display_page_check(6'd40, "LAST ", 32'h00000001);

        if (errors == 0) begin
            $display("tb_cnn_board_top: PASS");
        end else begin
            $display("tb_cnn_board_top: FAIL (%0d errors)", errors);
        end

        $finish;
    end

endmodule
