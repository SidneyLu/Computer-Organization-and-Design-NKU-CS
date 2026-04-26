module mul8 (
    input  wire [7:0] a_u8,
    input  wire signed [7:0] b_s8,
    output wire signed [15:0] p_s16
);
    assign p_s16 = $signed({1'b0, a_u8}) * b_s8;
endmodule
