`timescale 1ns / 1ps

module tb;

    reg clk;
    reg resetn;
    reg [4:0] rf_addr;
    reg [31:0] mem_addr;
    integer i;

    wire [31:0] rf_data;
    wire [31:0] mem_data;
    wire [31:0] cpu_pc;
    wire [31:0] cpu_inst;

    localparam [31:0] FIB10_EXPECT = 32'd55;

    single_cycle_cpu uut (
        .clk(clk),
        .resetn(resetn),
        .rf_addr(rf_addr),
        .mem_addr(mem_addr),
        .rf_data(rf_data),
        .mem_data(mem_data),
        .cpu_pc(cpu_pc),
        .cpu_inst(cpu_inst)
    );

    initial begin
        clk = 1'b0;
        resetn = 1'b0;
        rf_addr = 5'd17;
        mem_addr = 32'd4;

        // 清零寄存器堆与数据存储器，避免X态传播影响功能验证
        for (i = 0; i < 32; i = i + 1) begin
            uut.rf_module.rf[i] = 32'd0;
            uut.data_ram_module.DM[i] = 32'd0;
        end

        #100;
        resetn = 1'b1;

        #2500;

        if (mem_data === FIB10_EXPECT) begin
            $display("[PASS] Fibonacci check passed: Mem[1] = %0d (0x%08h)", mem_data, mem_data);
        end else begin
            $display("[FAIL] Fibonacci check failed: Mem[1] = %0d (0x%08h), expected %0d (0x%08h)",
                     mem_data, mem_data, FIB10_EXPECT, FIB10_EXPECT);
            $display("       Debug: pc=0x%08h inst=0x%08h rf17=0x%08h", cpu_pc, cpu_inst, rf_data);
        end

        $finish;
    end

    always #5 clk = ~clk;

endmodule
