`timescale 1ns/1ps

module tb_cnn_core;
    reg clk;
    reg rst_n;
    reg start_base;
    reg start_booth;
    reg start_simd;
    reg start_pipe;
    reg start_dsp;
    reg [199:0] img_flat_u8x25;
    reg signed [71:0] ker_flat_s8x9;
    wire done_base;
    wire done_booth;
    wire done_simd;
    wire done_pipe;
    wire done_dsp;
    wire [31:0] out_base_u8x4;
    wire [31:0] out_booth_u8x4;
    wire [31:0] out_simd_u8x4;
    wire [31:0] out_pipe_u8x4;
    wire [31:0] out_dsp_u8x4;

    localparam [31:0] EXPECT = {8'd144, 8'd135, 8'd99, 8'd90};

    cnn_compare_base_top u_base (
        .clk(clk),
        .rst_n(rst_n),
        .start(start_base),
        .img_flat_u8x25(img_flat_u8x25),
        .ker_flat_s8x9(ker_flat_s8x9),
        .done(done_base),
        .out_flat_u8x4(out_base_u8x4)
    );

    cnn_compare_booth_top u_booth (
        .clk(clk),
        .rst_n(rst_n),
        .start(start_booth),
        .img_flat_u8x25(img_flat_u8x25),
        .ker_flat_s8x9(ker_flat_s8x9),
        .done(done_booth),
        .out_flat_u8x4(out_booth_u8x4)
    );

    cnn_compare_booth_simd_top u_simd (
        .clk(clk),
        .rst_n(rst_n),
        .start(start_simd),
        .img_flat_u8x25(img_flat_u8x25),
        .ker_flat_s8x9(ker_flat_s8x9),
        .done(done_simd),
        .out_flat_u8x4(out_simd_u8x4)
    );

    cnn_compare_booth_simd_pipe_top u_pipe (
        .clk(clk),
        .rst_n(rst_n),
        .start(start_pipe),
        .img_flat_u8x25(img_flat_u8x25),
        .ker_flat_s8x9(ker_flat_s8x9),
        .done(done_pipe),
        .out_flat_u8x4(out_pipe_u8x4)
    );

    cnn_compare_booth_simd_pipe_dsp_top u_dsp (
        .clk(clk),
        .rst_n(rst_n),
        .start(start_dsp),
        .img_flat_u8x25(img_flat_u8x25),
        .ker_flat_s8x9(ker_flat_s8x9),
        .done(done_dsp),
        .out_flat_u8x4(out_dsp_u8x4)
    );

    always #5 clk = ~clk;

    task load_img_1_to_25;
        integer i;
        begin
            img_flat_u8x25 = 200'd0;
            for (i = 0; i < 25; i = i + 1) begin
                img_flat_u8x25[i*8 +: 8] = i + 1;
            end
        end
    endtask

    task load_kernel_all_ones;
        integer i;
        begin
            ker_flat_s8x9 = 72'd0;
            for (i = 0; i < 9; i = i + 1) begin
                ker_flat_s8x9[i*8 +: 8] = 8'sd1;
            end
        end
    endtask

    task automatic wait_done_and_check;
        input integer case_id;
        input integer expect_cycles;
        input integer dut_sel;
        integer cycles;
        reg done_now;
        reg [31:0] out_now;
        begin
            begin : wait_loop
                cycles = 1;
                done_now = 1'b0;
                out_now = 32'd0;

                while (1'b1) begin
                    case (dut_sel)
                        1: begin
                            done_now = done_base;
                            out_now = out_base_u8x4;
                        end
                        2: begin
                            done_now = done_booth;
                            out_now = out_booth_u8x4;
                        end
                        3: begin
                            done_now = done_simd;
                            out_now = out_simd_u8x4;
                        end
                        4: begin
                            done_now = done_pipe;
                            out_now = out_pipe_u8x4;
                        end
                        default: begin
                            done_now = done_dsp;
                            out_now = out_dsp_u8x4;
                        end
                    endcase

                    if (done_now === 1'b1) begin
                        if (cycles !== expect_cycles) begin
                            $display("CASE=%0d FAIL cycles=%0d exp_cycles=%0d",
                                     case_id, cycles, expect_cycles);
                            $finish;
                        end

                        if (out_now !== EXPECT) begin
                            $display("CASE=%0d FAIL out=%h exp=%h", case_id, out_now, EXPECT);
                            $finish;
                        end

                        $display("CASE=%0d PASS cycles=%0d out=%h", case_id, cycles, out_now);
                        @(posedge clk);
                        disable wait_loop;
                    end

                    @(posedge clk);
                    cycles = cycles + 1;
                    if (cycles > 200) begin
                        $display("CASE=%0d TIMEOUT", case_id);
                        $finish;
                    end
                end
            end
        end
    endtask

    initial begin
        clk = 1'b0;
        rst_n = 1'b0;
        start_base = 1'b0;
        start_booth = 1'b0;
        start_simd = 1'b0;
        start_pipe = 1'b0;
        start_dsp = 1'b0;
        load_img_1_to_25();
        load_kernel_all_ones();

        repeat(4) @(posedge clk);
        rst_n = 1'b1;
        @(posedge clk);

        start_base = 1'b1;
        @(posedge clk);
        start_base = 1'b0;
        wait_done_and_check(1, 96, 1);

        start_booth = 1'b1;
        @(posedge clk);
        start_booth = 1'b0;
        wait_done_and_check(2, 96, 2);

        start_simd = 1'b1;
        @(posedge clk);
        start_simd = 1'b0;
        wait_done_and_check(3, 1, 3);

        start_pipe = 1'b1;
        @(posedge clk);
        start_pipe = 1'b0;
        wait_done_and_check(4, 3, 4);

        start_dsp = 1'b1;
        @(posedge clk);
        start_dsp = 1'b0;
        wait_done_and_check(5, 3, 5);

        $display("ALL TESTS PASSED.");
        $finish;
    end
endmodule
