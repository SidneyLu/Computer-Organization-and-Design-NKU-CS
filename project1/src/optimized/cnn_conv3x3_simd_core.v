module cnn_conv3x3_simd_core #(
    parameter USE_DSP = 1'b0
) (
    input  wire [199:0] img_flat_u8x25,
    input  wire signed [71:0] ker_flat_s8x9,
    output wire signed [79:0] conv_blk0_s20x4,
    output wire signed [79:0] conv_blk1_s20x4,
    output wire signed [79:0] conv_blk2_s20x4
);
    wire [31:0] pix_blk0 [0:8];
    wire [31:0] pix_blk1 [0:8];
    wire [31:0] pix_blk2 [0:8];
    wire [31:0] ker_pack [0:8];

    wire [63:0] prod_blk0 [0:8];
    wire [63:0] prod_blk1 [0:8];
    wire [63:0] prod_blk2 [0:8];

    wire signed [19:0] conv0;
    wire signed [19:0] conv1;
    wire signed [19:0] conv2;
    wire signed [19:0] conv3;
    wire signed [19:0] conv4;
    wire signed [19:0] conv5;
    wire signed [19:0] conv6;
    wire signed [19:0] conv7;
    wire signed [19:0] conv8;

    function signed [19:0] lane20;
        input [63:0] lane_bus;
        input integer lane_idx;
        reg signed [15:0] lane16;
        begin
            case (lane_idx)
                0: lane16 = lane_bus[15:0];
                1: lane16 = lane_bus[31:16];
                2: lane16 = lane_bus[47:32];
                default: lane16 = lane_bus[63:48];
            endcase
            lane20 = {{4{lane16[15]}}, lane16};
        end
    endfunction

    assign ker_pack[0] = {4{ker_flat_s8x9[7:0]}};
    assign ker_pack[1] = {4{ker_flat_s8x9[15:8]}};
    assign ker_pack[2] = {4{ker_flat_s8x9[23:16]}};
    assign ker_pack[3] = {4{ker_flat_s8x9[31:24]}};
    assign ker_pack[4] = {4{ker_flat_s8x9[39:32]}};
    assign ker_pack[5] = {4{ker_flat_s8x9[47:40]}};
    assign ker_pack[6] = {4{ker_flat_s8x9[55:48]}};
    assign ker_pack[7] = {4{ker_flat_s8x9[63:56]}};
    assign ker_pack[8] = {4{ker_flat_s8x9[71:64]}};

    assign pix_blk0[0] = {img_flat_u8x25[47:40],  img_flat_u8x25[23:16],  img_flat_u8x25[15:8],   img_flat_u8x25[7:0]};
    assign pix_blk0[1] = {img_flat_u8x25[55:48],  img_flat_u8x25[31:24],  img_flat_u8x25[23:16],  img_flat_u8x25[15:8]};
    assign pix_blk0[2] = {img_flat_u8x25[63:56],  img_flat_u8x25[39:32],  img_flat_u8x25[31:24],  img_flat_u8x25[23:16]};
    assign pix_blk0[3] = {img_flat_u8x25[87:80],  img_flat_u8x25[63:56],  img_flat_u8x25[55:48],  img_flat_u8x25[47:40]};
    assign pix_blk0[4] = {img_flat_u8x25[95:88],  img_flat_u8x25[71:64],  img_flat_u8x25[63:56],  img_flat_u8x25[55:48]};
    assign pix_blk0[5] = {img_flat_u8x25[103:96], img_flat_u8x25[79:72],  img_flat_u8x25[71:64],  img_flat_u8x25[63:56]};
    assign pix_blk0[6] = {img_flat_u8x25[127:120],img_flat_u8x25[103:96], img_flat_u8x25[95:88],  img_flat_u8x25[87:80]};
    assign pix_blk0[7] = {img_flat_u8x25[135:128],img_flat_u8x25[111:104],img_flat_u8x25[103:96], img_flat_u8x25[95:88]};
    assign pix_blk0[8] = {img_flat_u8x25[143:136],img_flat_u8x25[119:112],img_flat_u8x25[111:104],img_flat_u8x25[103:96]};

    assign pix_blk1[0] = {img_flat_u8x25[95:88],  img_flat_u8x25[87:80],  img_flat_u8x25[63:56],  img_flat_u8x25[55:48]};
    assign pix_blk1[1] = {img_flat_u8x25[103:96], img_flat_u8x25[95:88],  img_flat_u8x25[71:64],  img_flat_u8x25[63:56]};
    assign pix_blk1[2] = {img_flat_u8x25[111:104],img_flat_u8x25[103:96], img_flat_u8x25[79:72],  img_flat_u8x25[71:64]};
    assign pix_blk1[3] = {img_flat_u8x25[135:128],img_flat_u8x25[127:120],img_flat_u8x25[103:96], img_flat_u8x25[95:88]};
    assign pix_blk1[4] = {img_flat_u8x25[143:136],img_flat_u8x25[135:128],img_flat_u8x25[111:104],img_flat_u8x25[103:96]};
    assign pix_blk1[5] = {img_flat_u8x25[151:144],img_flat_u8x25[143:136],img_flat_u8x25[119:112],img_flat_u8x25[111:104]};
    assign pix_blk1[6] = {img_flat_u8x25[175:168],img_flat_u8x25[167:160],img_flat_u8x25[143:136],img_flat_u8x25[135:128]};
    assign pix_blk1[7] = {img_flat_u8x25[183:176],img_flat_u8x25[175:168],img_flat_u8x25[151:144],img_flat_u8x25[143:136]};
    assign pix_blk1[8] = {img_flat_u8x25[191:184],img_flat_u8x25[183:176],img_flat_u8x25[159:152],img_flat_u8x25[151:144]};

    assign pix_blk2[0] = {24'd0, img_flat_u8x25[103:96]};
    assign pix_blk2[1] = {24'd0, img_flat_u8x25[111:104]};
    assign pix_blk2[2] = {24'd0, img_flat_u8x25[119:112]};
    assign pix_blk2[3] = {24'd0, img_flat_u8x25[143:136]};
    assign pix_blk2[4] = {24'd0, img_flat_u8x25[151:144]};
    assign pix_blk2[5] = {24'd0, img_flat_u8x25[159:152]};
    assign pix_blk2[6] = {24'd0, img_flat_u8x25[183:176]};
    assign pix_blk2[7] = {24'd0, img_flat_u8x25[191:184]};
    assign pix_blk2[8] = {24'd0, img_flat_u8x25[199:192]};

    genvar gk0;
    generate
        for (gk0 = 0; gk0 < 9; gk0 = gk0 + 1) begin : gen_blk0_mul
            if (USE_DSP) begin : gen_blk0_dsp
                simd_mul8x4_dsp u_mul (
                    .a_u8x4(pix_blk0[gk0]),
                    .b_s8x4(ker_pack[gk0]),
                    .p_s16x4(prod_blk0[gk0])
                );
            end else begin : gen_blk0_booth
                simd_mul8x4 u_mul (
                    .a_u8x4(pix_blk0[gk0]),
                    .b_s8x4(ker_pack[gk0]),
                    .p_s16x4(prod_blk0[gk0])
                );
            end
        end
    endgenerate

    genvar gk1;
    generate
        for (gk1 = 0; gk1 < 9; gk1 = gk1 + 1) begin : gen_blk1_mul
            if (USE_DSP) begin : gen_blk1_dsp
                simd_mul8x4_dsp u_mul (
                    .a_u8x4(pix_blk1[gk1]),
                    .b_s8x4(ker_pack[gk1]),
                    .p_s16x4(prod_blk1[gk1])
                );
            end else begin : gen_blk1_booth
                simd_mul8x4 u_mul (
                    .a_u8x4(pix_blk1[gk1]),
                    .b_s8x4(ker_pack[gk1]),
                    .p_s16x4(prod_blk1[gk1])
                );
            end
        end
    endgenerate

    genvar gk2;
    generate
        for (gk2 = 0; gk2 < 9; gk2 = gk2 + 1) begin : gen_blk2_mul
            if (USE_DSP) begin : gen_blk2_dsp
                simd_mul8x4_dsp u_mul (
                    .a_u8x4(pix_blk2[gk2]),
                    .b_s8x4(ker_pack[gk2]),
                    .p_s16x4(prod_blk2[gk2])
                );
            end else begin : gen_blk2_booth
                simd_mul8x4 u_mul (
                    .a_u8x4(pix_blk2[gk2]),
                    .b_s8x4(ker_pack[gk2]),
                    .p_s16x4(prod_blk2[gk2])
                );
            end
        end
    endgenerate

    assign conv0 = lane20(prod_blk0[0], 0) + lane20(prod_blk0[1], 0) + lane20(prod_blk0[2], 0) +
                   lane20(prod_blk0[3], 0) + lane20(prod_blk0[4], 0) + lane20(prod_blk0[5], 0) +
                   lane20(prod_blk0[6], 0) + lane20(prod_blk0[7], 0) + lane20(prod_blk0[8], 0);
    assign conv1 = lane20(prod_blk0[0], 1) + lane20(prod_blk0[1], 1) + lane20(prod_blk0[2], 1) +
                   lane20(prod_blk0[3], 1) + lane20(prod_blk0[4], 1) + lane20(prod_blk0[5], 1) +
                   lane20(prod_blk0[6], 1) + lane20(prod_blk0[7], 1) + lane20(prod_blk0[8], 1);
    assign conv2 = lane20(prod_blk0[0], 2) + lane20(prod_blk0[1], 2) + lane20(prod_blk0[2], 2) +
                   lane20(prod_blk0[3], 2) + lane20(prod_blk0[4], 2) + lane20(prod_blk0[5], 2) +
                   lane20(prod_blk0[6], 2) + lane20(prod_blk0[7], 2) + lane20(prod_blk0[8], 2);
    assign conv3 = lane20(prod_blk0[0], 3) + lane20(prod_blk0[1], 3) + lane20(prod_blk0[2], 3) +
                   lane20(prod_blk0[3], 3) + lane20(prod_blk0[4], 3) + lane20(prod_blk0[5], 3) +
                   lane20(prod_blk0[6], 3) + lane20(prod_blk0[7], 3) + lane20(prod_blk0[8], 3);

    assign conv4 = lane20(prod_blk1[0], 0) + lane20(prod_blk1[1], 0) + lane20(prod_blk1[2], 0) +
                   lane20(prod_blk1[3], 0) + lane20(prod_blk1[4], 0) + lane20(prod_blk1[5], 0) +
                   lane20(prod_blk1[6], 0) + lane20(prod_blk1[7], 0) + lane20(prod_blk1[8], 0);
    assign conv5 = lane20(prod_blk1[0], 1) + lane20(prod_blk1[1], 1) + lane20(prod_blk1[2], 1) +
                   lane20(prod_blk1[3], 1) + lane20(prod_blk1[4], 1) + lane20(prod_blk1[5], 1) +
                   lane20(prod_blk1[6], 1) + lane20(prod_blk1[7], 1) + lane20(prod_blk1[8], 1);
    assign conv6 = lane20(prod_blk1[0], 2) + lane20(prod_blk1[1], 2) + lane20(prod_blk1[2], 2) +
                   lane20(prod_blk1[3], 2) + lane20(prod_blk1[4], 2) + lane20(prod_blk1[5], 2) +
                   lane20(prod_blk1[6], 2) + lane20(prod_blk1[7], 2) + lane20(prod_blk1[8], 2);
    assign conv7 = lane20(prod_blk1[0], 3) + lane20(prod_blk1[1], 3) + lane20(prod_blk1[2], 3) +
                   lane20(prod_blk1[3], 3) + lane20(prod_blk1[4], 3) + lane20(prod_blk1[5], 3) +
                   lane20(prod_blk1[6], 3) + lane20(prod_blk1[7], 3) + lane20(prod_blk1[8], 3);

    assign conv8 = lane20(prod_blk2[0], 0) + lane20(prod_blk2[1], 0) + lane20(prod_blk2[2], 0) +
                   lane20(prod_blk2[3], 0) + lane20(prod_blk2[4], 0) + lane20(prod_blk2[5], 0) +
                   lane20(prod_blk2[6], 0) + lane20(prod_blk2[7], 0) + lane20(prod_blk2[8], 0);

    assign conv_blk0_s20x4 = {conv3, conv2, conv1, conv0};
    assign conv_blk1_s20x4 = {conv7, conv6, conv5, conv4};
    assign conv_blk2_s20x4 = {20'sd0, 20'sd0, 20'sd0, conv8};
endmodule
