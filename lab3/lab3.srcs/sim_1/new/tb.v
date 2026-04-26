`timescale 1ns / 1ps

module tb;

    // 输入信号定义为 reg
    reg         clk;
    reg  [1:0]  wen;
    reg  [4:0]  raddr1;
    reg  [4:0]  raddr2;
    reg  [4:0]  waddr;
    reg  [31:0] wdata;
    reg  [4:0]  test_addr;
    integer     errors;

    // 输出信号定义为 wire
    wire [31:0] rdata1;
    wire [31:0] rdata2;
    wire [31:0] test_data;
    wire [31:0] sum_data;

    // 实例化被测试的寄存器堆模块
    regfile u_regfile (
        .clk        (clk),
        .wen        (wen),
        .raddr1     (raddr1),
        .raddr2     (raddr2),
        .waddr      (waddr),
        .wdata      (wdata),
        .rdata1     (rdata1),
        .rdata2     (rdata2),
        .test_addr  (test_addr),
        .test_data  (test_data),
        .sum_data   (sum_data)
    );

    task write_reg;
        input [1:0]  wen_in;
        input [4:0]  waddr_in;
        input [31:0] wdata_in;
        begin
            @(negedge clk);
            wen   = wen_in;
            waddr = waddr_in;
            wdata = wdata_in;
            @(posedge clk);
            #1;
        end
    endtask

    task check_equal32;
        input [255:0] name;
        input [31:0]  actual;
        input [31:0]  expected;
        begin
            if (actual !== expected) begin
                errors = errors + 1;
                $display("[FAIL] %0s: actual=0x%08h expected=0x%08h", name, actual, expected);
            end
            else begin
                $display("[PASS] %0s: 0x%08h", name, actual);
            end
        end
    endtask

    // 生成时钟信号：周期 10ns (50MHz)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // 测试激励
    initial begin
        // 1. 初始化所有输入
        wen        = 2'b00;
        raddr1     = 0;
        raddr2     = 0;
        waddr      = 0;
        wdata      = 0;
        test_addr  = 0;
        errors     = 0;
        
        // 等待系统稳定
        #20;

        // ---------------------------------------------------------
        // 测试场景 1: 整字写入通用寄存器 (x1, x2, x3)
        // ---------------------------------------------------------
        $display("=== [Test 1] Full-word writes ===");
        
        // 写入 x1 (地址 1) = 0x12345678
        write_reg(2'b11, 5'd1, 32'h12345678);
        
        // 写入 x2 (地址 2) = 0x87654321
        write_reg(2'b11, 5'd2, 32'h87654321);
        
        // 写入 x3 (地址 3) = 0xAAAAAAAA
        write_reg(2'b11, 5'd3, 32'hAAAAAAAA);
        
        // 写入 x0 (地址 0) = 0xFFFFFFFF (尝试写入，应该无效)
        write_reg(2'b11, 5'd0, 32'hFFFFFFFF);
        
        // 关闭写使能
        @(negedge clk);
        wen   = 2'b00;
        waddr = 5'd0;
        wdata = 32'd0;
        #10;

        // ---------------------------------------------------------
        // 测试场景 2: 通过读端口 1 和 2 读取数据
        // ---------------------------------------------------------
        $display("\n=== [Test 2] Reading from rdata1 & rdata2 ===");
        
        // 读端口1读 x1，读端口2读 x2
        raddr1 = 5'd1;
        raddr2 = 5'd2;
        #2; // 等待组合逻辑输出
        check_equal32("x1 after full write", rdata1, 32'h12345678);
        check_equal32("x2 after full write", rdata2, 32'h87654321);
        check_equal32("sum_data after full write", sum_data, 32'h99999999);

        // 读端口1读 x3，读端口2读 x0
        raddr1 = 5'd3;
        raddr2 = 5'd0;
        #2;
        check_equal32("x3 after full write", rdata1, 32'hAAAAAAAA);
        check_equal32("x0 remains zero", rdata2, 32'h00000000);

        // ---------------------------------------------------------
        // 测试场景 3: 高 16 位 / 低 16 位分开写入
        // ---------------------------------------------------------
        $display("\n=== [Test 3] Half-word writes ===");

        // 仅写 x1 高 16 位
        write_reg(2'b10, 5'd1, 32'hABCD0000);

        // 仅写 x2 低 16 位
        write_reg(2'b01, 5'd2, 32'h0000EF01);

        // wen=00 时尝试写 x3，应该保持不变
        write_reg(2'b00, 5'd3, 32'hDEADBEEF);

        raddr1 = 5'd1;
        raddr2 = 5'd2;
        #2;
        check_equal32("x1 after high-half write", rdata1, 32'hABCD5678);
        check_equal32("x2 after low-half write", rdata2, 32'h8765EF01);
        check_equal32("sum_data after half-word writes", sum_data, 32'h33334579);

        raddr1 = 5'd3;
        #2;
        check_equal32("x3 unchanged when wen=00", rdata1, 32'hAAAAAAAA);

        // ---------------------------------------------------------
        // 测试场景 4: 通过测试端口 (test_addr) 读取
        // ---------------------------------------------------------
        $display("\n=== [Test 4] Reading from test_port ===");
        
        test_addr = 5'd1;
        #2;
        check_equal32("test port read x1", test_data, 32'hABCD5678);
        
        test_addr = 5'd0;
        #2;
        check_equal32("test port read x0", test_data, 32'h00000000);

        // ---------------------------------------------------------
        // 结束仿真
        // ---------------------------------------------------------
        #50;
        if (errors == 0)
            $display("\n=== Simulation Finished: PASS ===");
        else
            $display("\n=== Simulation Finished: FAIL (%0d errors) ===", errors);
        $finish;
    end

endmodule
