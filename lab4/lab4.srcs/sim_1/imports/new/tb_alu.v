`timescale 1ns / 1ps

module tb_alu;
    reg  [3:0]  alu_control;
    reg  [31:0] alu_src1;
    reg  [31:0] alu_src2;
    wire [31:0] alu_result;
    integer errors;

    alu u_alu (
        .alu_control(alu_control),
        .alu_src1   (alu_src1),
        .alu_src2   (alu_src2),
        .alu_result (alu_result)
    );

    task run_case;
        input [255:0] name;
        input [3:0]   op;
        input [31:0]  src1;
        input [31:0]  src2;
        input [31:0]  expected;
        begin
            alu_control = op;
            alu_src1    = src1;
            alu_src2    = src2;
            #1;
            if (alu_result !== expected) begin
                errors = errors + 1;
                $display("[FAIL] %0s op=0x%0h src1=0x%08h src2=0x%08h got=0x%08h exp=0x%08h",
                         name, op, src1, src2, alu_result, expected);
            end else begin
                $display("[PASS] %0s result=0x%08h", name, alu_result);
            end
        end
    endtask

    initial begin
        errors = 0;
        alu_control = 4'h0;
        alu_src1 = 32'd0;
        alu_src2 = 32'd0;
        #5;

        // 0x0 ADD
        run_case("ADD basic",        4'h0, 32'd1,          32'd2,          32'd3);
        run_case("ADD wrap",         4'h0, 32'hffff_ffff,  32'd1,          32'h0000_0000);

        // 0x1 SUB
        run_case("SUB basic",        4'h1, 32'd5,          32'd7,          32'hffff_fffe);

        // 0x2 SLT (signed)
        run_case("SLT -1<1",         4'h2, 32'hffff_ffff,  32'd1,          32'd1);
        run_case("SLT 5<-3",         4'h2, 32'd5,          32'hffff_fffd,  32'd0);

        // 0x3 SLTU (unsigned)
        run_case("SLTU 1<2",         4'h3, 32'd1,          32'd2,          32'd1);
        run_case("SLTU FFFF<1",      4'h3, 32'hffff_ffff,  32'd1,          32'd0);

        // 0x4 AND
        run_case("AND",              4'h4, 32'h55aa_ff00,  32'h0f0f_0f0f,  32'h050a_0f00);

        // 0x5 NOR
        run_case("NOR",              4'h5, 32'h55aa_ff00,  32'h0f0f_0f0f,  32'ha050_00f0);

        // 0x6 OR
        run_case("OR",               4'h6, 32'h55aa_ff00,  32'h0f0f_0f0f,  32'h5faf_ff0f);

        // 0x7 XOR
        run_case("XOR",              4'h7, 32'h55aa_ff00,  32'h0f0f_0f0f,  32'h5aa5_f00f);

        // 0x8 SLL (shift amount = src1[4:0])
        run_case("SLL by 4",         4'h8, 32'd4,          32'h0000_0011,  32'h0000_0110);

        // 0x9 SRL
        run_case("SRL by 4",         4'h9, 32'd4,          32'hf000_0000,  32'h0f00_0000);

        // 0xA SRA
        run_case("SRA by 4",         4'ha, 32'd4,          32'hf000_0000,  32'hff00_0000);

        // 0xB LUI
        run_case("LUI",              4'hb, 32'd0,          32'h1234_5678,  32'h5678_0000);

        // 0xC SEQ
        run_case("SEQ equal",        4'hc, 32'h1234_5678,  32'h1234_5678,  32'd1);
        run_case("SEQ not equal",    4'hc, 32'h1234_5678,  32'h1234_5670,  32'd0);

        // 0xD XNOR
        run_case("XNOR",             4'hd, 32'h55aa_ff00,  32'h0f0f_0f0f,  32'ha55a_0ff0);

        // 0xE LLI
        run_case("LLI",              4'he, 32'd0,          32'h1234_5678,  32'h0000_5678);

        // 0xF reserved/default
        run_case("RESERVED->0",      4'hf, 32'h89ab_cdef,  32'h0123_4567,  32'h0000_0000);

        if (errors == 0)
            $display("\n=== ALU TEST PASS ===");
        else
            $display("\n=== ALU TEST FAIL: %0d errors ===", errors);

        $finish;
    end
endmodule
