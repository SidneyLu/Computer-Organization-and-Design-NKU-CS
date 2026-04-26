`timescale 1ns/1ps

module tb_mul8;
    reg [7:0] a_u8;
    reg signed [7:0] b_s8;
    wire signed [15:0] p_s16;

    integer ia;
    integer ib;
    reg signed [15:0] expected;

    mul8 dut (
        .a_u8(a_u8),
        .b_s8(b_s8),
        .p_s16(p_s16)
    );

    initial begin
        for (ia = 0; ia < 256; ia = ia + 1) begin
            for (ib = -128; ib < 128; ib = ib + 1) begin
                a_u8 = ia[7:0];
                b_s8 = ib[7:0];
                expected = $signed({1'b0, a_u8}) * b_s8;
                #1;
                if (p_s16 !== expected) begin
                    $display("tb_mul8 FAIL a=%0d b=%0d got=%0d exp=%0d",
                             ia, ib, p_s16, expected);
                    $finish;
                end
            end
        end

        $display("tb_mul8 PASS");
        $finish;
    end
endmodule
