`timescale 1ns / 1ps

module add8(
    input  [7:0] operand_a,
    input  [7:0] operand_b,
    output [7:0] sum,
    output       cout
);

    assign {cout, sum} = operand_a + operand_b;

endmodule
