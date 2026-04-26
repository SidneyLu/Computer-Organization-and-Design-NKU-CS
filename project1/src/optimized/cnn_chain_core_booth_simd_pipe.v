module cnn_chain_core_booth_simd_pipe (
    input  wire clk,
    input  wire rst_n,
    input  wire start,
    input  wire [199:0] img_flat_u8x25,
    input  wire signed [71:0] ker_flat_s8x9,
    output reg  done,
    output reg  [31:0] out_flat_u8x4
);
    reg [2:0] vld_pipe;

    reg signed [79:0] conv_blk0_reg;
    reg signed [79:0] conv_blk1_reg;
    reg signed [79:0] conv_blk2_reg;

    reg [31:0] relu_blk0_reg;
    reg [31:0] relu_blk1_reg;
    reg [31:0] relu_blk2_reg;

    wire signed [79:0] conv_blk0_s20x4;
    wire signed [79:0] conv_blk1_s20x4;
    wire signed [79:0] conv_blk2_s20x4;

    wire [31:0] relu_blk0_stage2;
    wire [31:0] relu_blk1_stage2;
    wire [31:0] relu_blk2_stage2;

    wire [7:0] relu0;
    wire [7:0] relu1;
    wire [7:0] relu2;
    wire [7:0] relu3;
    wire [7:0] relu4;
    wire [7:0] relu5;
    wire [7:0] relu6;
    wire [7:0] relu7;
    wire [7:0] relu8;

    wire [7:0] pool0_u8;
    wire [7:0] pool1_u8;
    wire [7:0] pool2_u8;
    wire [7:0] pool3_u8;
    wire [31:0] out_stage3_u8x4;

    cnn_conv3x3_simd_core #(
        .USE_DSP(1'b0)
    ) u_conv (
        .img_flat_u8x25(img_flat_u8x25),
        .ker_flat_s8x9(ker_flat_s8x9),
        .conv_blk0_s20x4(conv_blk0_s20x4),
        .conv_blk1_s20x4(conv_blk1_s20x4),
        .conv_blk2_s20x4(conv_blk2_s20x4)
    );

    simd_relu8x4 u_relu_blk0 (
        .x_s20x4(conv_blk0_reg),
        .y_u8x4(relu_blk0_stage2)
    );

    simd_relu8x4 u_relu_blk1 (
        .x_s20x4(conv_blk1_reg),
        .y_u8x4(relu_blk1_stage2)
    );

    simd_relu8x4 u_relu_blk2 (
        .x_s20x4(conv_blk2_reg),
        .y_u8x4(relu_blk2_stage2)
    );

    assign relu0 = relu_blk0_reg[7:0];
    assign relu1 = relu_blk0_reg[15:8];
    assign relu2 = relu_blk0_reg[23:16];
    assign relu3 = relu_blk0_reg[31:24];
    assign relu4 = relu_blk1_reg[7:0];
    assign relu5 = relu_blk1_reg[15:8];
    assign relu6 = relu_blk1_reg[23:16];
    assign relu7 = relu_blk1_reg[31:24];
    assign relu8 = relu_blk2_reg[7:0];

    simd_avgpool2x2_8bit u_pool0 (
        .x_u8x4({relu4, relu3, relu1, relu0}),
        .y_u8(pool0_u8)
    );

    simd_avgpool2x2_8bit u_pool1 (
        .x_u8x4({relu5, relu4, relu2, relu1}),
        .y_u8(pool1_u8)
    );

    simd_avgpool2x2_8bit u_pool2 (
        .x_u8x4({relu7, relu6, relu4, relu3}),
        .y_u8(pool2_u8)
    );

    simd_avgpool2x2_8bit u_pool3 (
        .x_u8x4({relu8, relu7, relu5, relu4}),
        .y_u8(pool3_u8)
    );

    assign out_stage3_u8x4 = {pool3_u8, pool2_u8, pool1_u8, pool0_u8};

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            vld_pipe <= 3'b000;
            conv_blk0_reg <= 80'sd0;
            conv_blk1_reg <= 80'sd0;
            conv_blk2_reg <= 80'sd0;
            relu_blk0_reg <= 32'd0;
            relu_blk1_reg <= 32'd0;
            relu_blk2_reg <= 32'd0;
            out_flat_u8x4 <= 32'd0;
            done <= 1'b0;
        end else begin
            vld_pipe <= {vld_pipe[1:0], start};
            done <= vld_pipe[1];

            if (start) begin
                conv_blk0_reg <= conv_blk0_s20x4;
                conv_blk1_reg <= conv_blk1_s20x4;
                conv_blk2_reg <= conv_blk2_s20x4;
            end

            if (vld_pipe[0]) begin
                relu_blk0_reg <= relu_blk0_stage2;
                relu_blk1_reg <= relu_blk1_stage2;
                relu_blk2_reg <= relu_blk2_stage2;
            end

            if (vld_pipe[1]) begin
                out_flat_u8x4 <= out_stage3_u8x4;
            end
        end
    end
endmodule
