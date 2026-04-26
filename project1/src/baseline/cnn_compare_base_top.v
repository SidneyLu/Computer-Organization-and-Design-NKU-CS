module cnn_compare_base_top (
    input  wire clk,
    input  wire rst_n,
    input  wire start,
    input  wire [199:0] img_flat_u8x25,
    input  wire signed [71:0] ker_flat_s8x9,
    output wire done,
    output wire [31:0] out_flat_u8x4
);
    cnn_chain_core_base u_base (
        .clk(clk),
        .rst_n(rst_n),
        .start(start),
        .use_booth(1'b0),
        .img_flat_u8x25(img_flat_u8x25),
        .ker_flat_s8x9(ker_flat_s8x9),
        .done(done),
        .out_flat_u8x4(out_flat_u8x4)
    );
endmodule
