`timescale 1ns / 1ps
//*************************************************************************
//   > 文件名: fetch.v
//   > 功能  : 五级流水线CPU取指阶段(IF阶段)
//   > 描述  : 从指令存储器读取指令，更新PC，处理分支跳转和异常
//   > 作者  : LOONGSON
//   > 日期  : 2016-04-14
//*************************************************************************
`define STARTADDR 32'H00000034   // 定义程序起始地址为0x34，即从地址0x34开始执行
module fetch(                    // 取指阶段模块
    input             clk,       // 系统时钟
    input             resetn,    // 异步复位信号，低电平有效
    input             IF_valid,  // IF阶段有效标志
    input             next_fetch,// 是否允许取下一条指令(更新PC)
    input      [31:0] inst,      // 从inst_rom读取的指令
    input      [32:0] jbr_bus,   // 分支跳转总线：{1位taken, 32位target}
    output     [31:0] inst_addr, // 输出到inst_rom的指令地址
    output reg        IF_over,   // IF阶段完成信号
    output     [63:0] IF_ID_bus, // IF->ID流水线寄存器总线
    
    //5级流水线异常处理接口
    input      [32:0] exc_bus,   // 异常处理PC总线：{1位valid, 32位pc}
    
    //调试接口：输出当前PC和指令
    output     [31:0] IF_pc,     // 当前取指的PC值
    output     [31:0] IF_inst    // 当前取指的指令内容
);

//-----{PC更新逻辑}begin
    wire [31:0] next_pc;      // 下一个PC值
    wire [31:0] seq_pc;      // 顺序PC值(PC+4)
    reg  [31:0] pc;       // 当前PC寄存器
    reg  [31:0] pc_buf;    // PC缓冲寄存器，用于保存上一周期的PC值
    
    //解析分支跳转信号
    wire        jbr_taken;   // 分支跳转是否发生
    wire [31:0] jbr_target;  // 分支跳转目标地址
    assign {jbr_taken, jbr_target} = jbr_bus;  // 从jbr_bus解析跳转信号
    
    //解析异常处理PC
    wire        exc_valid;   // 异常是否有效
    wire [31:0] exc_pc;      // 异常处理PC值
    assign {exc_valid,exc_pc} = exc_bus;
    
    //计算顺序PC值(PC+4)
    assign seq_pc[31:2]    = pc[31:2] + 1'b1;  // PC高30位加1，实现PC+4
    assign seq_pc[1:0]     = pc[1:0];      // PC低2位保持不变

    // 确定下一个PC值：优先级为异常 > 分支跳转 > 顺序执行
    // 如果发生异常，PC跳转到异常处理地址
    // 如果发生分支跳转，PC跳转到分支目标地址
    // 否则，PC顺序递增(PC+4)
    assign next_pc = exc_valid ? exc_pc : 
                     jbr_taken ? jbr_target : seq_pc;
    always @(posedge clk)    // PC寄存器更新逻辑
    begin
        if (!resetn)
        begin
            pc <= `STARTADDR; // 复位时PC设置为起始地址
            pc_buf <= `STARTADDR;
        end
        else if (next_fetch)
        begin
            // inst_rom是同步ROM，当前周期可见的指令对应上一周期的请求地址
            // 因此需要保存上一周期的PC值(pc_buf)，用于正确匹配指令和PC
            pc_buf <= pc;
            pc <= next_pc;    // 更新PC到下一个地址
        end
    end
//-----{PC更新逻辑}end

//-----{输出指令地址到inst_rom}begin
    assign inst_addr = pc;  // 将当前PC作为指令地址输出到指令存储器
//-----{输出指令地址到inst_rom}end

//-----{IF阶段完成信号逻辑}begin
    // 由于inst_rom是同步ROM，指令需要一个周期才能返回
    // 当next_fetch=1时，表示正在取新指令，此时IF_over=0
    // 当next_fetch=0时，表示暂停取指，等待指令返回
    // 当指令返回后(IF_valid=1)，IF_over变为1，表示IF阶段完成
    always @(posedge clk)
    begin
        if (!resetn || next_fetch)
        begin
            IF_over <= 1'b0;  // 复位或正在取指时，IF阶段未完成
        end
        else
        begin
            IF_over <= IF_valid; // 指令返回后，IF阶段完成
        end
    end
    // 总结：inst_rom同步读取需要一个周期，IF_valid有效后IF_over才有效
    // 这实现了流水线的握手协议
//-----{IF阶段完成信号逻辑}end

//-----{IF->ID流水线寄存器总线}begin
    assign IF_ID_bus = {pc_buf, inst};  // 将PC缓冲值和指令打包成64位总线
    // pc_buf: 当前周期返回的指令对应的PC值(上一周期的请求地址)
    // inst: 当前周期从ROM返回的指令内容
    // 这样确保指令和其对应的PC正确匹配
//-----{IF->ID流水线寄存器总线}end

//-----{调试接口：输出IF阶段PC和指令}begin
    assign IF_pc   = pc_buf;  // 输出当前指令对应的PC值
    assign IF_inst = inst;    // 输出当前指令内容
//-----{调试接口：输出IF阶段PC和指令}end
endmodule