module simd_mul8x4 (
    input  wire [31:0] a_u8x4,
    input  wire [31:0] b_s8x4,
    output wire [63:0] p_s16x4
);
    wire signed [7:0] b0_s8;
    wire signed [7:0] b1_s8;
    wire signed [7:0] b2_s8;
    wire signed [7:0] b3_s8;

    wire signed [15:0] p0;
    wire signed [15:0] p1;
    wire signed [15:0] p2;
    wire signed [15:0] p3;

    assign b0_s8 = b_s8x4[7:0];
    assign b1_s8 = b_s8x4[15:8];
    assign b2_s8 = b_s8x4[23:16];
    assign b3_s8 = b_s8x4[31:24];

    mul8_booth_wallace u_lane0 (
        .a_u8(a_u8x4[7:0]),
        .b_s8(b0_s8),
        .p_s16(p0)
    );

    mul8_booth_wallace u_lane1 (
        .a_u8(a_u8x4[15:8]),
        .b_s8(b1_s8),
        .p_s16(p1)
    );

    mul8_booth_wallace u_lane2 (
        .a_u8(a_u8x4[23:16]),
        .b_s8(b2_s8),
        .p_s16(p2)
    );

    mul8_booth_wallace u_lane3 (
        .a_u8(a_u8x4[31:24]),
        .b_s8(b3_s8),
        .p_s16(p3)
    );

    assign p_s16x4 = {p3, p2, p1, p0};
endmodule
