`timescale 1ns / 1ps

module tb;

    reg         clk;
    reg         mult_begin;
    reg  [31:0] mult_op1;
    reg  [31:0] mult_op2;
    wire [63:0] product;
    wire        mult_end;

    localparam integer BASELINE_CYCLES = 32;
    localparam integer MAX_WAIT_CYCLES = 128;

    integer case_id;
    integer pass_count;
    integer fail_count;
    integer total_cycles;
    integer min_cycles;
    integer max_cycles;
    integer i;

    real avg_cycles;
    real saved_cycles;
    real speedup;

    reg signed [31:0] op1_s;
    reg signed [31:0] op2_s;
    reg signed [63:0] expected;

    multiply uut (
        .clk       (clk),
        .mult_begin(mult_begin),
        .mult_op1  (mult_op1),
        .mult_op2  (mult_op2),
        .product   (product),
        .mult_end  (mult_end)
    );

    always #5 clk = ~clk;

    task run_case;
        input [31:0] a;
        input [31:0] b;
        integer cycles;
        integer timeout_flag;
        begin
            case_id = case_id + 1;
            op1_s = a;
            op2_s = b;
            expected = op1_s * op2_s;

            @(negedge clk);
            mult_op1 = a;
            mult_op2 = b;
            mult_begin = 1'b1;

            cycles = 0;
            timeout_flag = 0;

            begin : WAIT_DONE
                while (1'b1) begin
                    @(posedge clk);
                    #1;
                    cycles = cycles + 1;
                    if (mult_end === 1'b1) begin
                        disable WAIT_DONE;
                    end
                    if (cycles >= MAX_WAIT_CYCLES) begin
                        timeout_flag = 1;
                        disable WAIT_DONE;
                    end
                end
            end

            if (timeout_flag) begin
                fail_count = fail_count + 1;
                $display("[CASE %0d] FAIL(timeout): a=%h(%0d), b=%h(%0d), wait_cycles=%0d",
                         case_id, a, $signed(a), b, $signed(b), cycles);
            end else if ($signed(product) !== expected) begin
                fail_count = fail_count + 1;
                $display("[CASE %0d] FAIL(data): a=%h(%0d), b=%h(%0d), got=%h(%0d), exp=%h(%0d), cycles=%0d",
                         case_id, a, $signed(a), b, $signed(b),
                         product, $signed(product), expected, expected, cycles);
            end else begin
                pass_count = pass_count + 1;
                total_cycles = total_cycles + cycles;
                if (cycles < min_cycles) min_cycles = cycles;
                if (cycles > max_cycles) max_cycles = cycles;
                $display("[CASE %0d] PASS: a=%h(%0d), b=%h(%0d), product=%h(%0d), cycles=%0d",
                         case_id, a, $signed(a), b, $signed(b),
                         product, $signed(product), cycles);
            end

            @(negedge clk);
            mult_begin = 1'b0;

            @(posedge clk);
            #1;
            if (mult_end !== 1'b0) begin
                fail_count = fail_count + 1;
                $display("[CASE %0d] FAIL(pulse): mult_end pulse width is not one cycle", case_id);
            end
        end
    endtask

    initial begin
        clk = 1'b0;
        mult_begin = 1'b0;
        mult_op1 = 32'd0;
        mult_op2 = 32'd0;
        case_id = 0;
        pass_count = 0;
        fail_count = 0;
        total_cycles = 0;
        min_cycles = MAX_WAIT_CYCLES;
        max_cycles = 0;
        avg_cycles = 0.0;
        saved_cycles = 0.0;
        speedup = 0.0;

        repeat (3) @(posedge clk);

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

        if (pass_count > 0) begin
            avg_cycles = (total_cycles * 1.0) / pass_count;
            saved_cycles = BASELINE_CYCLES - avg_cycles;
            speedup = BASELINE_CYCLES / avg_cycles;
        end

        $display("============================================================");
        $display("Summary:");
        $display("  Total cases                 : %0d", case_id);
        $display("  PASS / FAIL                 : %0d / %0d", pass_count, fail_count);
        $display("  Baseline cycles (before)    : %0d", BASELINE_CYCLES);
        if (pass_count > 0) begin
            $display("  Optimized cycles (after)    : min=%0d, max=%0d, avg=%0.2f",
                     min_cycles, max_cycles, avg_cycles);
            $display("  Cycles saved (avg)          : %0.2f", saved_cycles);
            $display("  Speedup (avg)               : %0.2fx", speedup);
        end
        if (fail_count == 0) begin
            $display("  Final result                : ALL PASS");
        end else begin
            $display("  Final result                : HAS FAILURES");
        end
        $display("============================================================");

        $finish;
    end

endmodule
