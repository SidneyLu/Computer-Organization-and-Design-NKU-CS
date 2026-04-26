`timescale 1ns/1ps

module tb_add8;
    reg [7:0] a_u8;
    reg [7:0] b_u8;
    wire [7:0] y_u8;

    integer ia;
    integer ib;
    reg [8:0] expected;

    add8 dut (
        .a_u8(a_u8),
        .b_u8(b_u8),
        .y_u8(y_u8)
    );

    initial begin
        for (ia = 0; ia < 256; ia = ia + 1) begin
            for (ib = 0; ib < 256; ib = ib + 1) begin
                a_u8 = ia[7:0];
                b_u8 = ib[7:0];
                expected = a_u8 + b_u8;
                #1;
                if (y_u8 !== expected[7:0]) begin
                    $display("tb_add8 FAIL a=%0d b=%0d got=%0d exp=%0d",
                             ia, ib, y_u8, expected[7:0]);
                    $finish;
                end
            end
        end

        $display("tb_add8 PASS");
        $finish;
    end
endmodule
