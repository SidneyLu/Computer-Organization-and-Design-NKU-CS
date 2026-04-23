`timescale 1ns / 1ps

module div4_u22(
    input  [21:0] din,
    output [21:0] dout
);

    assign dout = din >> 2;

endmodule
