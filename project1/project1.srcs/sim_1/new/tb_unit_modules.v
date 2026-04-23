`timescale 1ns / 1ps

module tb_unit_modules;

    reg  [7:0] mul_a;
    reg  [7:0] mul_b;
    wire [15:0] mul_product;

    reg  [7:0] add_a;
    reg  [7:0] add_b;
    wire [7:0] add_sum;
    wire       add_cout;

    reg  signed [19:0] relu_in;
    wire [19:0] relu_out;

    reg  [21:0] div_in;
    wire [21:0] div_out;

    integer errors;

    mul8_unsigned u_mul8_unsigned (
        .operand_a(mul_a),
        .operand_b(mul_b),
        .product  (mul_product)
    );

    add8 u_add8 (
        .operand_a(add_a),
        .operand_b(add_b),
        .sum      (add_sum),
        .cout     (add_cout)
    );

    relu_s20 u_relu_s20 (
        .din (relu_in),
        .dout(relu_out)
    );

    div4_u22 u_div4_u22 (
        .din (div_in),
        .dout(div_out)
    );

    task check_equal;
        input [255:0] label;
        input [31:0] actual;
        input [31:0] expected;
        begin
            if (actual !== expected) begin
                errors = errors + 1;
                $display("[FAIL] %0s actual=0x%08h expected=0x%08h", label, actual, expected);
            end else begin
                $display("[PASS] %0s = 0x%08h", label, actual);
            end
        end
    endtask

    initial begin
        errors = 0;

        mul_a = 8'd0; mul_b = 8'd0; #1;
        check_equal("mul 0*0", mul_product, 16'd0);
        mul_a = 8'd15; mul_b = 8'd3; #1;
        check_equal("mul 15*3", mul_product, 16'd45);
        mul_a = 8'hff; mul_b = 8'd2; #1;
        check_equal("mul ff*2", mul_product, 16'h01fe);

        add_a = 8'd0; add_b = 8'd0; #1;
        check_equal("add 0+0", {31'd0, add_cout, add_sum}, 32'd0);
        add_a = 8'd100; add_b = 8'd27; #1;
        check_equal("add 100+27", {23'd0, add_cout, add_sum}, {23'd0, 1'b0, 8'd127});
        add_a = 8'hff; add_b = 8'd1; #1;
        check_equal("add ff+1 carry", {23'd0, add_cout, add_sum}, {23'd0, 1'b1, 8'd0});

        relu_in = -20'sd5; #1;
        check_equal("relu negative", relu_out, 20'd0);
        relu_in = 20'sd12345; #1;
        check_equal("relu positive", relu_out, 20'd12345);
        relu_in = -20'sd1; #1;
        check_equal("relu -1", relu_out, 20'd0);

        div_in = 22'd0; #1;
        check_equal("div4 0", div_out, 22'd0);
        div_in = 22'd3; #1;
        check_equal("div4 3", div_out, 22'd0);
        div_in = 22'd4; #1;
        check_equal("div4 4", div_out, 22'd1);
        div_in = 22'd1023; #1;
        check_equal("div4 1023", div_out, 22'd255);

        if (errors == 0) begin
            $display("tb_unit_modules: PASS");
        end else begin
            $display("tb_unit_modules: FAIL (%0d errors)", errors);
        end

        $finish;
    end

endmodule
