module simd_add8x4 (
    input  wire [31:0] a_u8x4,
    input  wire [31:0] b_u8x4,
    output wire [35:0] y_u9x4
);
    wire [8:0] s0;
    wire [8:0] s1;
    wire [8:0] s2;
    wire [8:0] s3;

    assign s0 = {1'b0, a_u8x4[7:0]} + {1'b0, b_u8x4[7:0]};
    assign s1 = {1'b0, a_u8x4[15:8]} + {1'b0, b_u8x4[15:8]};
    assign s2 = {1'b0, a_u8x4[23:16]} + {1'b0, b_u8x4[23:16]};
    assign s3 = {1'b0, a_u8x4[31:24]} + {1'b0, b_u8x4[31:24]};

    assign y_u9x4 = {s3, s2, s1, s0};
endmodule
