`timescale 1ns / 1ps

module tb_cnn_core;

    localparam [31:0] EXPECTED_PACKED = 32'h052A001F;

    reg         clk;
    reg         resetn;
    reg         cfg_we;
    reg  [5:0]  cfg_addr;
    reg  [31:0] cfg_data;
    reg         start;

    wire [199:0] pixels_flat;
    wire [71:0]  kernel_flat;
    wire         base_done;
    wire [31:0]  base_pool_out;
    wire         opt_done;
    wire [31:0]  opt_pool_out;

    integer errors;
    integer cycle;
    integer base_cycle;
    integer opt_cycle;

    cnn_cfg_regs u_cfg_regs (
        .clk        (clk),
        .resetn     (resetn),
        .cfg_we     (cfg_we),
        .cfg_addr   (cfg_addr),
        .cfg_data   (cfg_data),
        .pixels_flat(pixels_flat),
        .kernel_flat(kernel_flat)
    );

    cnn_chain_core_base u_core_base (
        .clk         (clk),
        .resetn      (resetn),
        .start       (start),
        .pixels_flat (pixels_flat),
        .kernel_flat (kernel_flat),
        .done        (base_done),
        .pool_out_flat(base_pool_out)
    );

    cnn_chain_core_opt u_core_opt (
        .clk         (clk),
        .resetn      (resetn),
        .start       (start),
        .pixels_flat (pixels_flat),
        .kernel_flat (kernel_flat),
        .done        (opt_done),
        .pool_out_flat(opt_pool_out)
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

    task check_equal;
        input [255:0] label;
        input [31:0] actual;
        input [31:0] expected;
        begin
            if (actual !== expected) begin
                errors = errors + 1;
                $display("[FAIL] %0s actual=0x%08h expected=0x%08h", label, actual, expected);
            end else begin
                $display("[PASS] %0s = 0x%08h", label, actual);
            end
        end
    endtask

    task write_cfg_word;
        input [5:0]  addr;
        input [31:0] data;
        begin
            @(negedge clk);
            cfg_addr = addr;
            cfg_data = data;
            cfg_we = 1'b1;
            @(negedge clk);
            cfg_we = 1'b0;
        end
    endtask

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
        errors = 0;
        resetn = 1'b0;
        cfg_we = 1'b0;
        cfg_addr = 6'd0;
        cfg_data = 32'd0;
        start = 1'b0;
        base_cycle = 0;
        opt_cycle = 0;

        repeat (3) @(posedge clk);
        resetn = 1'b1;

        for (cycle = 0; cycle < 34; cycle = cycle + 1) begin
            write_cfg_word(cycle[5:0], sample_value(cycle[5:0]));
        end

        #1;
        check_equal("pixel[0]", {24'd0, pixels_flat[7:0]}, 32'd12);
        check_equal("pixel[24]", {24'd0, pixels_flat[199:192]}, 32'd16);
        check_equal("kernel[0]", {24'd0, kernel_flat[7:0]}, 32'h000000ff);
        check_equal("kernel[3]", {24'd0, kernel_flat[31:24]}, 32'h000000fe);
        check_equal("kernel[8]", {24'd0, kernel_flat[71:64]}, 32'h00000001);

        @(negedge clk);
        start = 1'b1;
        for (cycle = 1; cycle <= 6; cycle = cycle + 1) begin
            @(posedge clk);
            #1;
            if (cycle == 1) begin
                start = 1'b0;
            end
            if (base_done && (base_cycle == 0)) begin
                base_cycle = cycle;
            end
            if (opt_done && (opt_cycle == 0)) begin
                opt_cycle = cycle;
            end
        end

        check_equal("baseline done cycle", base_cycle, 32'd1);
        check_equal("optimized done cycle", opt_cycle, 32'd3);
        check_equal("baseline pool", base_pool_out, EXPECTED_PACKED);
        check_equal("optimized pool", opt_pool_out, EXPECTED_PACKED);

        if (errors == 0) begin
            $display("tb_cnn_core: PASS");
        end else begin
            $display("tb_cnn_core: FAIL (%0d errors)", errors);
        end

        $finish;
    end

endmodule
