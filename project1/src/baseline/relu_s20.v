module relu_s20 (
    input  wire signed [19:0] x_s20,
    output wire [7:0] y_u8
);
    wire signed [19:0] x_clip_low;
    assign x_clip_low = (x_s20 < 0) ? 20'sd0 : x_s20;
    assign y_u8 = (x_clip_low > 20'sd255) ? 8'd255 : x_clip_low[7:0];
endmodule
