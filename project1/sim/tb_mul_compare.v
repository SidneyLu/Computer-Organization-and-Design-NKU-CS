`timescale 1ns/1ps

module tb_mul_compare;
    reg [7:0] a_u8;
    reg signed [7:0] b_s8;
    wire signed [15:0] p_base;
    wire signed [15:0] p_booth;
    integer ia;
    integer ib;

    mul8 u_base (
        .a_u8(a_u8),
        .b_s8(b_s8),
        .p_s16(p_base)
    );

    mul8_booth_wallace u_booth (
        .a_u8(a_u8),
        .b_s8(b_s8),
        .p_s16(p_booth)
    );

    initial begin
        for (ia = 0; ia < 256; ia = ia + 1) begin
            for (ib = -128; ib < 128; ib = ib + 1) begin
                a_u8 = ia[7:0];
                b_s8 = ib[7:0];
                #1;
                if (p_base !== p_booth) begin
                    $display("MISMATCH a=%0d b=%0d base=%0d booth=%0d", ia, ib, p_base, p_booth);
                    $finish;
                end
            end
        end
        $display("mul8 vs booth/wallace: PASS");
        $finish;
    end
endmodule
