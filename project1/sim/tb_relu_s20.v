`timescale 1ns/1ps

module tb_relu_s20;
    reg signed [19:0] x_s20;
    wire [7:0] y_u8;

    integer iv;
    integer expected;

    relu_s20 dut (
        .x_s20(x_s20),
        .y_u8(y_u8)
    );

    task automatic check_value;
        input integer val;
        input integer exp;
        begin
            x_s20 = val;
            #1;
            if (y_u8 !== exp[7:0]) begin
                $display("tb_relu_s20 FAIL x=%0d got=%0d exp=%0d", val, y_u8, exp);
                $finish;
            end
        end
    endtask

    initial begin
        check_value(-524288, 0);
        check_value(-300, 0);
        check_value(-1, 0);
        check_value(0, 0);
        check_value(1, 1);
        check_value(127, 127);
        check_value(255, 255);
        check_value(256, 255);
        check_value(1024, 255);
        check_value(524287, 255);

        for (iv = -300; iv <= 600; iv = iv + 1) begin
            if (iv < 0) begin
                expected = 0;
            end else if (iv > 255) begin
                expected = 255;
            end else begin
                expected = iv;
            end
            check_value(iv, expected);
        end

        $display("tb_relu_s20 PASS");
        $finish;
    end
endmodule
