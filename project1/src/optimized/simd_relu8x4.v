module simd_relu8x4 (
    input  wire signed [79:0] x_s20x4,
    output wire [31:0] y_u8x4
);
    function [7:0] relu_clip_lane;
        input signed [19:0] x_s20;
        begin
            if (x_s20 < 0) begin
                relu_clip_lane = 8'd0;
            end else if (x_s20 > 20'sd255) begin
                relu_clip_lane = 8'd255;
            end else begin
                relu_clip_lane = x_s20[7:0];
            end
        end
    endfunction

    wire [7:0] y0;
    wire [7:0] y1;
    wire [7:0] y2;
    wire [7:0] y3;

    assign y0 = relu_clip_lane(x_s20x4[19:0]);
    assign y1 = relu_clip_lane(x_s20x4[39:20]);
    assign y2 = relu_clip_lane(x_s20x4[59:40]);
    assign y3 = relu_clip_lane(x_s20x4[79:60]);

    assign y_u8x4 = {y3, y2, y1, y0};
endmodule
