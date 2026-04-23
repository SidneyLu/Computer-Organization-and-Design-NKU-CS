`timescale 1ns / 1ps

module relu_s20(
    input  signed [19:0] din,
    output        [19:0] dout
);

    assign dout = din[19] ? 20'd0 : din[19:0];

endmodule
