`timescale 1ns / 1ps
//*************************************************************************
//   > 文件名: wb.v
//   > 功能  : 五级流水线CPU写回阶段(WB阶段)
//   > 描述  : 寄存器堆写回、HI/LO寄存器操作、CP0寄存器处理、异常处理
//   > 作者  : LOONGSON
//   > 日期  : 2016-04-14
//*************************************************************************
`define EXC_ENTER_ADDR 32'd0     // 异常处理入口地址
                                 // 本CPU简化了Exception处理，SYSCALL异常跳转到地址0
module wb(                       // 写回阶段模块
    input          WB_valid,     // WB阶段有效标志
    input  [117:0] MEM_WB_bus_r, // MEM->WB流水线寄存器
    output         rf_wen,       // 寄存器堆写使能
    output [  4:0] rf_wdest,     // 寄存器堆写目标寄存器
    output [ 31:0] rf_wdata,     // 寄存器堆写数据
    output         WB_over,      // WB阶段完成信号

    //5级流水线异常处理接口
    input             clk,       // 系统时钟
    input             resetn,    // 异步复位信号，低电平有效
    output [ 32:0] exc_bus,      // 异常PC总线：{1位valid, 32位pc}
    output [  4:0] WB_wdest,     // WB阶段写回目标寄存器
    output         cancel,       // 流水线取消信号：SYSCALL或ERET指令清空流水线
 
    //调试接口：输出PC和HI/LO寄存器值
    output [ 31:0] WB_pc,       // 当前PC值
    output [ 31:0] HI_data,     // HI寄存器值
    output [ 31:0] LO_data      // LO寄存器值
);
//-----{MEM->WB流水线寄存器解析}begin    
    wire [31:0] mem_result;  // MEM阶段结果
    wire [31:0] lo_result;   // LO寄存器结果
    wire        hi_write;    // HI寄存器写使能
    wire        lo_write;    // LO寄存器写使能
    
    wire wen;               // 寄存器堆写使能
    wire [4:0] wdest;       // 寄存器堆写目标寄存器
    
    wire mfhi;              // MFHI指令标志
    wire mflo;              // MFLO指令标志
    wire mtc0;              // MTC0指令标志
    wire mfc0;              // MFC0指令标志
    wire [7 :0] cp0r_addr;  // CP0寄存器地址
    wire       syscall;     // SYSCALL指令标志
    wire       eret;        // ERET指令标志
    
    wire [31:0] pc;         // 当前PC值
    assign {wen,
            wdest,
            mem_result,
            lo_result,
            hi_write,
            lo_write,
            mfhi,
            mflo,
            mtc0,
            mfc0,
            cp0r_addr,
            syscall,
            eret,
            pc} = MEM_WB_bus_r;  // 从118位总线解析各字段
//-----{MEM->WB流水线寄存器解析}end

//-----{HI/LO寄存器操作}begin
    // HI寄存器：存储乘法结果的高32位
    // LO寄存器：存储乘法结果的低32位
    reg [31:0] hi;
    reg [31:0] lo;
    
    // HI寄存器写入：乘法结果高32位或MTHI指令
    always @(posedge clk)
    begin
        if (hi_write)
        begin
            hi <= mem_result;  // 写入HI寄存器
        end
    end
    
    // LO寄存器写入：乘法结果低32位或MTLO指令
    always @(posedge clk)
    begin
        if (lo_write)
        begin
            lo <= lo_result;  // 写入LO寄存器
        end
    end
//-----{HI/LO寄存器操作}end

//-----{CP0寄存器处理}begin
// CP0(协处理器0)用于异常处理和系统控制
// 本CPU简化了CP0实现，只实现了3个寄存器：STATUS(12.0), CAUSE(13.0), EPC(14.0)
// CP0寄存器地址格式：{5位寄存器号, 3位选择字段}
   wire [31:0] cp0r_status;  // STATUS寄存器：异常状态
   wire [31:0] cp0r_cause;   // CAUSE寄存器：异常原因
   wire [31:0] cp0r_epc;     // EPC寄存器：异常返回地址
   
   // CP0寄存器写使能
   wire status_wen;  // STATUS寄存器写使能
   wire epc_wen;     // EPC寄存器写使能
   assign status_wen = mtc0 & (cp0r_addr=={5'd12,3'd0});  // MTC0指令写STATUS寄存器
   assign epc_wen    = mtc0 & (cp0r_addr=={5'd14,3'd0});  // MTC0指令写EPC寄存器
   
   // CP0寄存器读数据
   wire [31:0] cp0r_rdata;
   assign cp0r_rdata = (cp0r_addr=={5'd12,3'd0}) ? cp0r_status :
                       (cp0r_addr=={5'd13,3'd0}) ? cp0r_cause  :
                       (cp0r_addr=={5'd14,3'd0}) ? cp0r_epc : 32'd0;
   
   // STATUS寄存器实现
   // STATUS[1]为EXL(异常级别)位，表示是否在异常处理中
   reg status_exl_r;
   assign cp0r_status = {30'd0,status_exl_r,1'b0};  // STATUS寄存器格式
   always @(posedge clk)
   begin
       if (!resetn || eret)  // 复位或ERET指令：清除EXL标志
       begin
           status_exl_r <= 1'b0;
       end
       else if (syscall)  // SYSCALL指令：设置EXL标志
       begin
           status_exl_r <= 1'b1;
       end
       else if (status_wen)  // MTC0指令：写入EXL标志
       begin
           status_exl_r <= mem_result[1];
       end
   end
   
   // CAUSE寄存器实现
   // CAUSE[6:2]为ExcCode字段，表示异常类型
   // ExcCode=8表示SYSCALL异常
   reg [4:0] cause_exc_code_r;
   assign cp0r_cause = {25'd0,cause_exc_code_r,2'd0};  // CAUSE寄存器格式
   always @(posedge clk)
   begin
       if (syscall)  // SYSCALL指令：设置ExcCode为8
       begin
           cause_exc_code_r <= 5'd8;
       end
   end
   
   // EPC寄存器实现
   // EPC保存异常发生时的PC值，用于ERET指令返回
   reg [31:0] epc_r;
   assign cp0r_epc = epc_r;
   always @(posedge clk)
   begin
       if (syscall)  // SYSCALL指令：保存当前PC到EPC
       begin
           epc_r <= pc;
       end
       else if (epc_wen)  // MTC0指令：写入EPC寄存器
       begin
           epc_r <= mem_result;
       end
   end
   
   // 流水线取消信号：SYSCALL或ERET指令需要清空流水线
   assign cancel = (syscall | eret) & WB_over;
//-----{CP0寄存器处理}end

//-----{WB阶段完成信号}begin
    // WB阶段总是可以立即完成，因为写回操作不需要等待
    assign WB_over = WB_valid;
//-----{WB阶段完成信号}end

//-----{WB->寄存器堆写回}begin
    // 寄存器堆写使能：只有WB阶段完成时才写
    assign rf_wen   = wen & WB_over;
    assign rf_wdest = wdest;  // 写目标寄存器
    
    // 写数据选择：
    // MFHI指令：写入HI寄存器值
    // MFLO指令：写入LO寄存器值
    // MFC0指令：写入CP0寄存器值
    // 其他指令：写入MEM阶段结果
    assign rf_wdata = mfhi ? hi :
                      mflo ? lo :
                      mfc0 ? cp0r_rdata : mem_result;
//-----{WB->寄存器堆写回}end

//-----{异常PC总线}begin
    wire        exc_valid;  // 异常有效标志
    wire [31:0] exc_pc;     // 异常PC值
    
    // 异常有效条件：SYSCALL或ERET指令且WB阶段有效
    assign exc_valid = (syscall | eret) & WB_valid;
    
    // 异常PC值：
    // ERET指令：跳转到EPC寄存器保存的地址
    // SYSCALL指令：跳转到异常处理入口地址(本CPU简化为地址0)
    assign exc_pc = syscall ? `EXC_ENTER_ADDR : cp0r_epc;
    
    // 打包异常PC总线
    assign exc_bus = {exc_valid,exc_pc};
//-----{异常PC总线}end

//-----{WB阶段写回目标寄存器}begin
    // 输出WB阶段的写回目标寄存器，用于数据冒险检测
    // 只有当WB阶段有效时，才输出有效的写回目标寄存器
    assign WB_wdest = rf_wdest & {5{WB_valid}};
//-----{WB阶段写回目标寄存器}end

//-----{调试接口：输出WB阶段PC和HI/LO寄存器值}begin
    assign WB_pc = pc;       // 输出当前PC值
    assign HI_data = hi;     // 输出HI寄存器值
    assign LO_data = lo;     // 输出LO寄存器值
//-----{调试接口：输出WB阶段PC和HI/LO寄存器值}end
endmodule