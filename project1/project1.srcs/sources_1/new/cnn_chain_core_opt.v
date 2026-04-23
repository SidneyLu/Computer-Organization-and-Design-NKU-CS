`timescale 1ns / 1ps

module cnn_chain_core_opt(
    input              clk,
    input              resetn,
    input              start,
    input      [199:0] pixels_flat,
    input      [71:0]  kernel_flat,
    output             done,
    output reg [31:0]  pool_out_flat
);

    function signed [19:0] conv_window_balanced;
        input [199:0] pixels_flat_i;
        input [71:0]  kernel_flat_i;
        input integer base_row;
        input integer base_col;
        integer pixel_idx0;
        integer pixel_idx1;
        integer pixel_idx2;
        integer pixel_idx3;
        integer pixel_idx4;
        integer pixel_idx5;
        integer pixel_idx6;
        integer pixel_idx7;
        integer pixel_idx8;
        reg signed [15:0] product0;
        reg signed [15:0] product1;
        reg signed [15:0] product2;
        reg signed [15:0] product3;
        reg signed [15:0] product4;
        reg signed [15:0] product5;
        reg signed [15:0] product6;
        reg signed [15:0] product7;
        reg signed [15:0] product8;
        reg signed [16:0] sum01;
        reg signed [16:0] sum23;
        reg signed [16:0] sum45;
        reg signed [16:0] sum67;
        reg signed [17:0] sum0123;
        reg signed [17:0] sum4567;
        reg signed [18:0] sum0_7;
        begin
            pixel_idx0 = (base_row * 5) + base_col;
            pixel_idx1 = (base_row * 5) + base_col + 1;
            pixel_idx2 = (base_row * 5) + base_col + 2;
            pixel_idx3 = ((base_row + 1) * 5) + base_col;
            pixel_idx4 = ((base_row + 1) * 5) + base_col + 1;
            pixel_idx5 = ((base_row + 1) * 5) + base_col + 2;
            pixel_idx6 = ((base_row + 2) * 5) + base_col;
            pixel_idx7 = ((base_row + 2) * 5) + base_col + 1;
            pixel_idx8 = ((base_row + 2) * 5) + base_col + 2;

            product0 = $signed({1'b0, pixels_flat_i[pixel_idx0*8 +: 8]}) * $signed(kernel_flat_i[0*8 +: 8]);
            product1 = $signed({1'b0, pixels_flat_i[pixel_idx1*8 +: 8]}) * $signed(kernel_flat_i[1*8 +: 8]);
            product2 = $signed({1'b0, pixels_flat_i[pixel_idx2*8 +: 8]}) * $signed(kernel_flat_i[2*8 +: 8]);
            product3 = $signed({1'b0, pixels_flat_i[pixel_idx3*8 +: 8]}) * $signed(kernel_flat_i[3*8 +: 8]);
            product4 = $signed({1'b0, pixels_flat_i[pixel_idx4*8 +: 8]}) * $signed(kernel_flat_i[4*8 +: 8]);
            product5 = $signed({1'b0, pixels_flat_i[pixel_idx5*8 +: 8]}) * $signed(kernel_flat_i[5*8 +: 8]);
            product6 = $signed({1'b0, pixels_flat_i[pixel_idx6*8 +: 8]}) * $signed(kernel_flat_i[6*8 +: 8]);
            product7 = $signed({1'b0, pixels_flat_i[pixel_idx7*8 +: 8]}) * $signed(kernel_flat_i[7*8 +: 8]);
            product8 = $signed({1'b0, pixels_flat_i[pixel_idx8*8 +: 8]}) * $signed(kernel_flat_i[8*8 +: 8]);

            sum01 = product0 + product1;
            sum23 = product2 + product3;
            sum45 = product4 + product5;
            sum67 = product6 + product7;
            sum0123 = sum01 + sum23;
            sum4567 = sum45 + sum67;
            sum0_7 = sum0123 + sum4567;
            conv_window_balanced = sum0_7 + product8;
        end
    endfunction

    function [19:0] relu20;
        input signed [19:0] value;
        begin
            relu20 = value[19] ? 20'd0 : value[19:0];
        end
    endfunction

    function [7:0] sat_u8;
        input [21:0] value;
        begin
            if (value > 22'd255) begin
                sat_u8 = 8'hff;
            end else begin
                sat_u8 = value[7:0];
            end
        end
    endfunction

    wire signed [19:0] conv00_w;
    wire signed [19:0] conv01_w;
    wire signed [19:0] conv02_w;
    wire signed [19:0] conv10_w;
    wire signed [19:0] conv11_w;
    wire signed [19:0] conv12_w;
    wire signed [19:0] conv20_w;
    wire signed [19:0] conv21_w;
    wire signed [19:0] conv22_w;

    reg signed [19:0] conv00_r;
    reg signed [19:0] conv01_r;
    reg signed [19:0] conv02_r;
    reg signed [19:0] conv10_r;
    reg signed [19:0] conv11_r;
    reg signed [19:0] conv12_r;
    reg signed [19:0] conv20_r;
    reg signed [19:0] conv21_r;
    reg signed [19:0] conv22_r;

    reg [19:0] relu00_r;
    reg [19:0] relu01_r;
    reg [19:0] relu02_r;
    reg [19:0] relu10_r;
    reg [19:0] relu11_r;
    reg [19:0] relu12_r;
    reg [19:0] relu20_r;
    reg [19:0] relu21_r;
    reg [19:0] relu22_r;

    reg [2:0] valid_pipe;

    wire [21:0] pool00_sum_w;
    wire [21:0] pool01_sum_w;
    wire [21:0] pool10_sum_w;
    wire [21:0] pool11_sum_w;

    assign conv00_w = conv_window_balanced(pixels_flat, kernel_flat, 0, 0);
    assign conv01_w = conv_window_balanced(pixels_flat, kernel_flat, 0, 1);
    assign conv02_w = conv_window_balanced(pixels_flat, kernel_flat, 0, 2);
    assign conv10_w = conv_window_balanced(pixels_flat, kernel_flat, 1, 0);
    assign conv11_w = conv_window_balanced(pixels_flat, kernel_flat, 1, 1);
    assign conv12_w = conv_window_balanced(pixels_flat, kernel_flat, 1, 2);
    assign conv20_w = conv_window_balanced(pixels_flat, kernel_flat, 2, 0);
    assign conv21_w = conv_window_balanced(pixels_flat, kernel_flat, 2, 1);
    assign conv22_w = conv_window_balanced(pixels_flat, kernel_flat, 2, 2);

    assign pool00_sum_w = {2'b00, relu00_r} + {2'b00, relu01_r} + {2'b00, relu10_r} + {2'b00, relu11_r};
    assign pool01_sum_w = {2'b00, relu01_r} + {2'b00, relu02_r} + {2'b00, relu11_r} + {2'b00, relu12_r};
    assign pool10_sum_w = {2'b00, relu10_r} + {2'b00, relu11_r} + {2'b00, relu20_r} + {2'b00, relu21_r};
    assign pool11_sum_w = {2'b00, relu11_r} + {2'b00, relu12_r} + {2'b00, relu21_r} + {2'b00, relu22_r};

    assign done = valid_pipe[2];

    always @(posedge clk) begin
        if (!resetn) begin
            valid_pipe <= 3'b000;
            conv00_r <= 20'sd0;
            conv01_r <= 20'sd0;
            conv02_r <= 20'sd0;
            conv10_r <= 20'sd0;
            conv11_r <= 20'sd0;
            conv12_r <= 20'sd0;
            conv20_r <= 20'sd0;
            conv21_r <= 20'sd0;
            conv22_r <= 20'sd0;
            relu00_r <= 20'd0;
            relu01_r <= 20'd0;
            relu02_r <= 20'd0;
            relu10_r <= 20'd0;
            relu11_r <= 20'd0;
            relu12_r <= 20'd0;
            relu20_r <= 20'd0;
            relu21_r <= 20'd0;
            relu22_r <= 20'd0;
            pool_out_flat <= 32'd0;
        end else begin
            valid_pipe <= {valid_pipe[1:0], start};

            if (start) begin
                conv00_r <= conv00_w;
                conv01_r <= conv01_w;
                conv02_r <= conv02_w;
                conv10_r <= conv10_w;
                conv11_r <= conv11_w;
                conv12_r <= conv12_w;
                conv20_r <= conv20_w;
                conv21_r <= conv21_w;
                conv22_r <= conv22_w;
            end

            if (valid_pipe[0]) begin
                relu00_r <= relu20(conv00_r);
                relu01_r <= relu20(conv01_r);
                relu02_r <= relu20(conv02_r);
                relu10_r <= relu20(conv10_r);
                relu11_r <= relu20(conv11_r);
                relu12_r <= relu20(conv12_r);
                relu20_r <= relu20(conv20_r);
                relu21_r <= relu20(conv21_r);
                relu22_r <= relu20(conv22_r);
            end

            if (valid_pipe[1]) begin
                pool_out_flat <= {
                    sat_u8(pool11_sum_w >> 2),
                    sat_u8(pool10_sum_w >> 2),
                    sat_u8(pool01_sum_w >> 2),
                    sat_u8(pool00_sum_w >> 2)
                };
            end
        end
    end

endmodule
