`timescale 1ns / 1ps

module booth_r2_check;

    reg         clk;
    reg         mult_begin;
    reg  [31:0] mult_op1;
    reg  [31:0] mult_op2;
    wire [63:0] product;
    wire        mult_end;

    integer i;

    multiply dut (
        .clk       (clk),
        .mult_begin(mult_begin),
        .mult_op1  (mult_op1),
        .mult_op2  (mult_op2),
        .product   (product),
        .mult_end  (mult_end)
    );

    task run_case;
        input [31:0] a;
        input [31:0] b;
        reg signed [31:0] a_s;
        reg signed [31:0] b_s;
        reg signed [63:0] expected;
        begin
            a_s      = a;
            b_s      = b;
            expected = a_s * b_s;

            @(negedge clk);
            mult_op1   <= a;
            mult_op2   <= b;
            mult_begin <= 1'b1;

            @(posedge clk);
            #1;
            if (mult_end !== 1'b1) begin
                $display("FAIL: mult_end did not pulse, a=%h b=%h", a, b);
                $finish;
            end
            if ($signed(product) !== expected) begin
                $display("FAIL: a=%h b=%h got=%h expected=%h", a, b, product, expected);
                $finish;
            end

            @(negedge clk);
            mult_begin <= 1'b0;

            @(posedge clk);
            #1;
            if (mult_end !== 1'b0) begin
                $display("FAIL: mult_end pulse width is not one cycle");
                $finish;
            end
        end
    endtask

    initial begin
        clk        = 1'b0;
        mult_begin = 1'b0;
        mult_op1   = 32'd0;
        mult_op2   = 32'd0;

        repeat (2) @(posedge clk);

        run_case(32'h00001111, 32'h00001111);
        run_case(32'h00001111, 32'h00002222);
        run_case(32'h00000002, 32'hffffffff);
        run_case(32'h00000002, 32'h80000000);
        run_case(32'h7fffffff, 32'h7fffffff);
        run_case(32'h80000000, 32'h80000000);
        run_case(32'h80000000, 32'h7fffffff);
        run_case(32'hffff0001, 32'h0000ffff);
        run_case(32'h00000000, 32'hffffffff);

        for (i = 0; i < 100; i = i + 1) begin
            run_case($random, $random);
        end

        $display("ALL PASS");
        $finish;
    end

    always #5 clk = ~clk;

endmodule
