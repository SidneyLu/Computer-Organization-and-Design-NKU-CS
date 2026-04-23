`timescale 1ns / 1ps

module mul8_unsigned(
    input  [7:0] operand_a,
    input  [7:0] operand_b,
    output [15:0] product
);

    assign product = operand_a * operand_b;

endmodule
