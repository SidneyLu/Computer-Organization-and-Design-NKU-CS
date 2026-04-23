`timescale 1ns / 1ps

module cnn_compare_base_top(
    input              clk,
    input              resetn,
    input              start,
    input      [199:0] pixels_flat,
    input      [71:0]  kernel_flat,
    output             done,
    output     [31:0]  pool_out_flat
);

    cnn_chain_core_base u_core_base (
        .clk         (clk),
        .resetn      (resetn),
        .start       (start),
        .pixels_flat (pixels_flat),
        .kernel_flat (kernel_flat),
        .done        (done),
        .pool_out_flat(pool_out_flat)
    );

endmodule
