`timescale 1ns/1ps

module tb_simd_mul_compare;
    reg [31:0] a_u8x4;
    reg [31:0] b_s8x4;
    wire [63:0] p_booth_s16x4;
    wire [63:0] p_dsp_s16x4;

    integer ia;
    integer ib;
    integer lane;
    integer expected;

    simd_mul8x4 u_booth (
        .a_u8x4(a_u8x4),
        .b_s8x4(b_s8x4),
        .p_s16x4(p_booth_s16x4)
    );

    simd_mul8x4_dsp u_dsp (
        .a_u8x4(a_u8x4),
        .b_s8x4(b_s8x4),
        .p_s16x4(p_dsp_s16x4)
    );

    task automatic check_lane_equal;
        input integer lane_idx;
        input integer exp_val;
        reg signed [15:0] booth_lane;
        reg signed [15:0] dsp_lane;
        begin
            booth_lane = p_booth_s16x4[lane_idx*16 +: 16];
            dsp_lane = p_dsp_s16x4[lane_idx*16 +: 16];
            if (booth_lane !== exp_val || dsp_lane !== exp_val || booth_lane !== dsp_lane) begin
                $display("tb_simd_mul_compare FAIL lane=%0d got_booth=%0d got_dsp=%0d exp=%0d",
                         lane_idx, booth_lane, dsp_lane, exp_val);
                $finish;
            end
        end
    endtask

    task automatic check_vector_pattern;
        input [31:0] a_vec;
        input [31:0] b_vec;
        reg signed [15:0] exp0;
        reg signed [15:0] exp1;
        reg signed [15:0] exp2;
        reg signed [15:0] exp3;
        begin
            a_u8x4 = a_vec;
            b_s8x4 = b_vec;
            exp0 = $signed({1'b0, a_vec[7:0]}) * $signed(b_vec[7:0]);
            exp1 = $signed({1'b0, a_vec[15:8]}) * $signed(b_vec[15:8]);
            exp2 = $signed({1'b0, a_vec[23:16]}) * $signed(b_vec[23:16]);
            exp3 = $signed({1'b0, a_vec[31:24]}) * $signed(b_vec[31:24]);
            #1;
            check_lane_equal(0, exp0);
            check_lane_equal(1, exp1);
            check_lane_equal(2, exp2);
            check_lane_equal(3, exp3);
        end
    endtask

    initial begin
        for (ia = 0; ia < 256; ia = ia + 1) begin
            for (ib = -128; ib < 128; ib = ib + 1) begin
                a_u8x4 = {ia[7:0], ia[7:0], ia[7:0], ia[7:0]};
                b_s8x4 = {ib[7:0], ib[7:0], ib[7:0], ib[7:0]};
                expected = ia * ib;
                #1;
                for (lane = 0; lane < 4; lane = lane + 1) begin
                    check_lane_equal(lane, expected);
                end
            end
        end

        check_vector_pattern({8'd255, 8'd128, 8'd17, 8'd3},
                             {8'sd127, -8'sd64, 8'sd5, -8'sd7});
        check_vector_pattern({8'd0, 8'd1, 8'd200, 8'd255},
                             {-8'sd128, 8'sd0, -8'sd1, 8'sd1});
        check_vector_pattern({8'd12, 8'd34, 8'd56, 8'd78},
                             {8'sd9, -8'sd10, 8'sd11, -8'sd12});

        $display("tb_simd_mul_compare PASS");
        $finish;
    end
endmodule
