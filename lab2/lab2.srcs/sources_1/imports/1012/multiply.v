`timescale 1ns / 1ps
//*************************************************************************
//   > File Name: multiply.v
//   > Desc     : 32-bit signed multiplier using standard radix-2 Booth
//   >            recoding, Wallace tree reduction and final adder
//*************************************************************************

module booth_radix2_ppgen(
    input  [31:0] mult_op1,
    input  [31:0] mult_op2,
    output [2175:0] partial_products
);

    wire signed [67:0] multiplicand_ext;
    wire [32:0]        booth_bits;

    assign multiplicand_ext = {{36{mult_op1[31]}}, mult_op1};
    assign booth_bits       = {mult_op2, 1'b0};

    function signed [67:0] booth_select;
        input [1:0]         booth_code;
        input signed [67:0] multiplicand;
        reg   signed [67:0] booth_value;
        begin
            case (booth_code)
                2'b01: booth_value = multiplicand;
                2'b10: booth_value = -multiplicand;
                default: booth_value = 68'd0;
            endcase
            booth_select = booth_value;
        end
    endfunction

    genvar g0;
    generate
        for (g0 = 0; g0 < 32; g0 = g0 + 1) begin : GEN_PP
            wire [67:0] pp_value;
            assign pp_value = booth_select(booth_bits[g0 +: 2], multiplicand_ext) <<< g0;
            assign partial_products[68*g0 +: 68] = pp_value;
        end
    endgenerate

endmodule

module wallace_tree_32(
    input  [2175:0] partial_products,
    output [67:0]   sum_out,
    output [67:0]   carry_out
);

    function [135:0] csa3;
        input [67:0] a;
        input [67:0] b;
        input [67:0] c;
        reg   [67:0] sum_v;
        reg   [67:0] carry_v;
        begin
            sum_v   = a ^ b ^ c;
            carry_v = ((a & b) | (a & c) | (b & c)) << 1;
            csa3    = {carry_v, sum_v};
        end
    endfunction

    wire [67:0] pp  [0:31];
    wire [67:0] st1 [0:21];
    wire [67:0] st2 [0:14];
    wire [67:0] st3 [0:9];
    wire [67:0] st4 [0:6];
    wire [67:0] st5 [0:4];
    wire [67:0] st6 [0:3];
    wire [67:0] st7 [0:2];
    wire [67:0] st8 [0:1];

    genvar g1;
    generate
        for (g1 = 0; g1 < 32; g1 = g1 + 1) begin : UNPACK_PP
            assign pp[g1] = partial_products[68*g1 +: 68];
        end
    endgenerate

    genvar g2;
    generate
        for (g2 = 0; g2 < 10; g2 = g2 + 1) begin : STAGE1
            wire [135:0] csa_out;
            assign csa_out     = csa3(pp[3*g2], pp[3*g2+1], pp[3*g2+2]);
            assign st1[2*g2]   = csa_out[67:0];
            assign st1[2*g2+1] = csa_out[135:68];
        end
    endgenerate
    assign st1[20] = pp[30];
    assign st1[21] = pp[31];

    genvar g3;
    generate
        for (g3 = 0; g3 < 7; g3 = g3 + 1) begin : STAGE2
            wire [135:0] csa_out;
            assign csa_out     = csa3(st1[3*g3], st1[3*g3+1], st1[3*g3+2]);
            assign st2[2*g3]   = csa_out[67:0];
            assign st2[2*g3+1] = csa_out[135:68];
        end
    endgenerate
    assign st2[14] = st1[21];

    genvar g4;
    generate
        for (g4 = 0; g4 < 5; g4 = g4 + 1) begin : STAGE3
            wire [135:0] csa_out;
            assign csa_out     = csa3(st2[3*g4], st2[3*g4+1], st2[3*g4+2]);
            assign st3[2*g4]   = csa_out[67:0];
            assign st3[2*g4+1] = csa_out[135:68];
        end
    endgenerate

    genvar g5;
    generate
        for (g5 = 0; g5 < 3; g5 = g5 + 1) begin : STAGE4
            wire [135:0] csa_out;
            assign csa_out     = csa3(st3[3*g5], st3[3*g5+1], st3[3*g5+2]);
            assign st4[2*g5]   = csa_out[67:0];
            assign st4[2*g5+1] = csa_out[135:68];
        end
    endgenerate
    assign st4[6] = st3[9];

    genvar g6;
    generate
        for (g6 = 0; g6 < 2; g6 = g6 + 1) begin : STAGE5
            wire [135:0] csa_out;
            assign csa_out     = csa3(st4[3*g6], st4[3*g6+1], st4[3*g6+2]);
            assign st5[2*g6]   = csa_out[67:0];
            assign st5[2*g6+1] = csa_out[135:68];
        end
    endgenerate
    assign st5[4] = st4[6];

    wire [135:0] st6_csa;
    assign st6_csa = csa3(st5[0], st5[1], st5[2]);
    assign st6[0]  = st6_csa[67:0];
    assign st6[1]  = st6_csa[135:68];
    assign st6[2]  = st5[3];
    assign st6[3]  = st5[4];

    wire [135:0] st7_csa;
    assign st7_csa = csa3(st6[0], st6[1], st6[2]);
    assign st7[0]  = st7_csa[67:0];
    assign st7[1]  = st7_csa[135:68];
    assign st7[2]  = st6[3];

    wire [135:0] st8_csa;
    assign st8_csa = csa3(st7[0], st7[1], st7[2]);
    assign st8[0]  = st8_csa[67:0];
    assign st8[1]  = st8_csa[135:68];

    assign sum_out   = st8[0];
    assign carry_out = st8[1];

endmodule

module final_adder_68(
    input  [67:0] addend_a,
    input  [67:0] addend_b,
    output [67:0] sum_out
);

    assign sum_out = addend_a + addend_b;

endmodule

module multiply(
    input         clk,
    input         mult_begin,
    input  [31:0] mult_op1,
    input  [31:0] mult_op2,
    output [63:0] product,
    output        mult_end
);

    wire [2175:0] partial_products;
    wire [67:0]   wallace_sum;
    wire [67:0]   wallace_carry;
    wire [67:0]   product_full;
    wire [63:0]   product_comb;

    reg           mult_begin_d = 1'b0;
    reg [63:0]    product_r    = 64'd0;
    reg           mult_end_r   = 1'b0;

    wire mult_start;
    assign mult_start = mult_begin & ~mult_begin_d;

    booth_radix2_ppgen u_booth_radix2_ppgen (
        .mult_op1        (mult_op1),
        .mult_op2        (mult_op2),
        .partial_products(partial_products)
    );

    wallace_tree_32 u_wallace_tree_32 (
        .partial_products(partial_products),
        .sum_out         (wallace_sum),
        .carry_out       (wallace_carry)
    );

    final_adder_68 u_final_adder_68 (
        .addend_a(wallace_sum),
        .addend_b(wallace_carry),
        .sum_out (product_full)
    );

    assign product_comb = product_full[63:0];

    always @(posedge clk) begin
        mult_begin_d <= mult_begin;
        mult_end_r   <= mult_start;
        if (mult_start) begin
            product_r <= product_comb;
        end
    end

    assign product  = product_r;
    assign mult_end = mult_end_r;

endmodule
