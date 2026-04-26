module simd_avgpool2x2_8bit (
    input  wire [31:0] x_u8x4,
    output wire [7:0] y_u8
);
    wire [35:0] pair_sum_u9x4;
    wire [8:0] pair0_u9;
    wire [8:0] pair1_u9;
    wire [9:0] pool_sum_u10;

    simd_add8x4 u_pair_add (
        .a_u8x4({16'd0, x_u8x4[31:24], x_u8x4[15:8]}),
        .b_u8x4({16'd0, x_u8x4[23:16], x_u8x4[7:0]}),
        .y_u9x4(pair_sum_u9x4)
    );

    assign pair0_u9 = pair_sum_u9x4[8:0];
    assign pair1_u9 = pair_sum_u9x4[17:9];
    assign pool_sum_u10 = {1'b0, pair0_u9} + {1'b0, pair1_u9};
    assign y_u8 = pool_sum_u10[9:2];
endmodule
