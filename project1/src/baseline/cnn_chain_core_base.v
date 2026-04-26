module cnn_chain_core_base (
    input  wire clk,
    input  wire rst_n,
    input  wire start,
    input  wire use_booth,
    input  wire [199:0] img_flat_u8x25,
    input  wire signed [71:0] ker_flat_s8x9,
    output reg  done,
    output reg  [31:0] out_flat_u8x4
);
    localparam S_IDLE = 3'd0;
    localparam S_CONV = 3'd1;
    localparam S_RELU = 3'd2;
    localparam S_POOL = 3'd3;
    localparam S_DONE = 3'd4;

    reg [2:0] state;
    reg [1:0] ox;
    reg [1:0] oy;
    reg [3:0] k;
    reg [3:0] relu_idx;
    reg [1:0] pool_idx;

    reg signed [19:0] conv_map [0:8];
    reg [7:0] relu_map [0:8];

    wire [7:0] pix_cur;
    wire signed [7:0] ker_cur;
    wire signed [15:0] prod_base;
    wire signed [15:0] prod_booth;
    wire signed [15:0] prod_cur;
    wire [7:0] relu_cur;

    wire [7:0] p0;
    wire [7:0] p1;
    wire [7:0] p2;
    wire [7:0] p3;
    wire [9:0] pool_sum;
    wire [7:0] pool_avg;

    integer loop_i;
    wire [3:0] conv_idx;
    wire [5:0] pix_idx;
    wire [3:0] base_idx;
    wire [1:0] pool_r;
    wire [1:0] pool_c;

    wire [1:0] ix;
    wire [1:0] iy;
    assign ix = k % 3;
    assign iy = k / 3;
    assign conv_idx = oy * 3 + ox;
    assign pix_idx = (oy + iy) * 5 + (ox + ix);
    assign p0 = relu_map[base_idx];
    assign p1 = relu_map[base_idx + 1];
    assign p2 = relu_map[base_idx + 3];
    assign p3 = relu_map[base_idx + 4];
    assign pool_sum = {2'b00, p0} + {2'b00, p1} + {2'b00, p2} + {2'b00, p3};

    assign pix_cur = img_flat_u8x25[pix_idx*8 +: 8];
    assign ker_cur = ker_flat_s8x9[k*8 +: 8];

    mul8 u_mul8 (
        .a_u8(pix_cur),
        .b_s8(ker_cur),
        .p_s16(prod_base)
    );

    mul8_booth_wallace u_mul8_booth (
        .a_u8(pix_cur),
        .b_s8(ker_cur),
        .p_s16(prod_booth)
    );

    assign prod_cur = use_booth ? prod_booth : prod_base;

    relu_s20 u_relu (
        .x_s20(conv_map[relu_idx]),
        .y_u8(relu_cur)
    );

    div4 u_div4 (
        .x_u10(pool_sum),
        .y_u8(pool_avg)
    );

    assign pool_r = pool_idx[1];
    assign pool_c = pool_idx[0];
    assign base_idx = pool_r * 3 + pool_c;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= S_IDLE;
            ox <= 2'd0;
            oy <= 2'd0;
            k <= 4'd0;
            relu_idx <= 4'd0;
            pool_idx <= 2'd0;
            done <= 1'b0;
            out_flat_u8x4 <= 32'd0;
            for (loop_i = 0; loop_i < 9; loop_i = loop_i + 1) begin
                conv_map[loop_i] <= 20'sd0;
                relu_map[loop_i] <= 8'd0;
            end
        end else begin
            done <= 1'b0;
            case (state)
                S_IDLE: begin
                    if (start) begin
                        ox <= 2'd0;
                        oy <= 2'd0;
                        k <= 4'd0;
                        relu_idx <= 4'd0;
                        pool_idx <= 2'd0;
                        out_flat_u8x4 <= 32'd0;
                        for (loop_i = 0; loop_i < 9; loop_i = loop_i + 1) begin
                            conv_map[loop_i] <= 20'sd0;
                            relu_map[loop_i] <= 8'd0;
                        end
                        state <= S_CONV;
                    end
                end
                S_CONV: begin
                    conv_map[conv_idx] <= conv_map[conv_idx] + $signed(prod_cur);
                    if (k == 4'd8) begin
                        k <= 4'd0;
                        if (ox == 2'd2) begin
                            ox <= 2'd0;
                            if (oy == 2'd2) begin
                                oy <= 2'd0;
                                state <= S_RELU;
                            end else begin
                                oy <= oy + 2'd1;
                            end
                        end else begin
                            ox <= ox + 2'd1;
                        end
                    end else begin
                        k <= k + 4'd1;
                    end
                end
                S_RELU: begin
                    relu_map[relu_idx] <= relu_cur;
                    if (relu_idx == 4'd8) begin
                        relu_idx <= 4'd0;
                        state <= S_POOL;
                    end else begin
                        relu_idx <= relu_idx + 4'd1;
                    end
                end
                S_POOL: begin
                    out_flat_u8x4[pool_idx*8 +: 8] <= pool_avg;
                    if (pool_idx == 2'd3) begin
                        pool_idx <= 2'd0;
                        state <= S_DONE;
                    end else begin
                        pool_idx <= pool_idx + 2'd1;
                    end
                end
                S_DONE: begin
                    done <= 1'b1;
                    state <= S_IDLE;
                end
                default: begin
                    state <= S_IDLE;
                end
            endcase
        end
    end
endmodule
