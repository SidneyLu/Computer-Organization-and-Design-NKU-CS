`timescale 1ns/1ps

module tb_div4;
    reg [9:0] x_u10;
    wire [7:0] y_u8;

    integer ix;
    reg [7:0] expected;

    div4 dut (
        .x_u10(x_u10),
        .y_u8(y_u8)
    );

    initial begin
        for (ix = 0; ix < 1024; ix = ix + 1) begin
            x_u10 = ix[9:0];
            expected = ix[9:2];
            #1;
            if (y_u8 !== expected) begin
                $display("tb_div4 FAIL x=%0d got=%0d exp=%0d", ix, y_u8, expected);
                $finish;
            end
        end

        $display("tb_div4 PASS");
        $finish;
    end
endmodule
