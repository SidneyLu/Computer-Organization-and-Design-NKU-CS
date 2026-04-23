`timescale 1ns / 1ps

module cnn_chain_core_base(
    input              clk,
    input              resetn,
    input              start,
    input      [199:0] pixels_flat,
    input      [71:0]  kernel_flat,
    output reg         done,
    output reg [31:0]  pool_out_flat
);

    function signed [19:0] conv_window;
        input [199:0] pixels_flat_i;
        input [71:0]  kernel_flat_i;
        input integer base_row;
        input integer base_col;
        integer row_idx;
        integer col_idx;
        integer pixel_idx;
        integer kernel_idx;
        reg signed [19:0] acc;
        reg signed [15:0] product_v;
        reg [7:0] pixel_v;
        reg signed [7:0] kernel_v;
        begin
            acc = 20'sd0;
            for (row_idx = 0; row_idx < 3; row_idx = row_idx + 1) begin
                for (col_idx = 0; col_idx < 3; col_idx = col_idx + 1) begin
                    pixel_idx = ((base_row + row_idx) * 5) + (base_col + col_idx);
                    kernel_idx = (row_idx * 3) + col_idx;
                    pixel_v = pixels_flat_i[pixel_idx*8 +: 8];
                    kernel_v = kernel_flat_i[kernel_idx*8 +: 8];
                    product_v = $signed({1'b0, pixel_v}) * kernel_v;
                    acc = acc + $signed(product_v);
                end
            end
            conv_window = acc;
        end
    endfunction

    function [19:0] relu20;
        input signed [19:0] value;
        begin
            relu20 = value[19] ? 20'd0 : value[19:0];
        end
    endfunction

    function [21:0] div4_22;
        input [21:0] value;
        begin
            div4_22 = value >> 2;
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

    wire [19:0] relu00_w;
    wire [19:0] relu01_w;
    wire [19:0] relu02_w;
    wire [19:0] relu10_w;
    wire [19:0] relu11_w;
    wire [19:0] relu12_w;
    wire [19:0] relu20_w;
    wire [19:0] relu21_w;
    wire [19:0] relu22_w;

    wire [21:0] pool00_sum_w;
    wire [21:0] pool01_sum_w;
    wire [21:0] pool10_sum_w;
    wire [21:0] pool11_sum_w;

    wire [7:0] pool00_w;
    wire [7:0] pool01_w;
    wire [7:0] pool10_w;
    wire [7:0] pool11_w;

    assign conv00_w = conv_window(pixels_flat, kernel_flat, 0, 0);
    assign conv01_w = conv_window(pixels_flat, kernel_flat, 0, 1);
    assign conv02_w = conv_window(pixels_flat, kernel_flat, 0, 2);
    assign conv10_w = conv_window(pixels_flat, kernel_flat, 1, 0);
    assign conv11_w = conv_window(pixels_flat, kernel_flat, 1, 1);
    assign conv12_w = conv_window(pixels_flat, kernel_flat, 1, 2);
    assign conv20_w = conv_window(pixels_flat, kernel_flat, 2, 0);
    assign conv21_w = conv_window(pixels_flat, kernel_flat, 2, 1);
    assign conv22_w = conv_window(pixels_flat, kernel_flat, 2, 2);

    assign relu00_w = relu20(conv00_w);
    assign relu01_w = relu20(conv01_w);
    assign relu02_w = relu20(conv02_w);
    assign relu10_w = relu20(conv10_w);
    assign relu11_w = relu20(conv11_w);
    assign relu12_w = relu20(conv12_w);
    assign relu20_w = relu20(conv20_w);
    assign relu21_w = relu20(conv21_w);
    assign relu22_w = relu20(conv22_w);

    assign pool00_sum_w = {2'b00, relu00_w} + {2'b00, relu01_w} + {2'b00, relu10_w} + {2'b00, relu11_w};
    assign pool01_sum_w = {2'b00, relu01_w} + {2'b00, relu02_w} + {2'b00, relu11_w} + {2'b00, relu12_w};
    assign pool10_sum_w = {2'b00, relu10_w} + {2'b00, relu11_w} + {2'b00, relu20_w} + {2'b00, relu21_w};
    assign pool11_sum_w = {2'b00, relu11_w} + {2'b00, relu12_w} + {2'b00, relu21_w} + {2'b00, relu22_w};

    assign pool00_w = sat_u8(div4_22(pool00_sum_w));
    assign pool01_w = sat_u8(div4_22(pool01_sum_w));
    assign pool10_w = sat_u8(div4_22(pool10_sum_w));
    assign pool11_w = sat_u8(div4_22(pool11_sum_w));

    always @(posedge clk) begin
        if (!resetn) begin
            done <= 1'b0;
            pool_out_flat <= 32'd0;
        end else begin
            done <= start;
            if (start) begin
                pool_out_flat <= {pool11_w, pool10_w, pool01_w, pool00_w};
            end
        end
    end

endmodule
