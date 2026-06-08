`timescale 1ns / 1ps
//*****************************************************************************
//   > 文件名: exe.v
//   > 功能  : 五级流水线CPU执行阶段(EXE阶段)
//   > 描述  : ALU运算、乘法运算、数据前递、结果输出
//   > 作者  : LOONGSON
//   > 日期  : 2016-04-14
//*****************************************************************************/
module exe(
    input              EXE_valid,      // EXE阶段有效标志
    input      [212:0] ID_EXE_bus_r, // ID->EXE流水线寄存器
    output             EXE_over,      // EXE阶段完成信号
    output     [153:0] EXE_MEM_bus, // EXE->MEM流水线寄存器总线

    // 数据前递接口
    input              clk,           // 系统时钟
    input              MEM_fwd_wen,   // MEM阶段前递写使能
    input      [  4:0] MEM_fwd_wdest,// MEM阶段前递写目标寄存器
    input      [ 31:0] MEM_fwd_data, // MEM阶段前递数据
    input              WB_fwd_wen,    // WB阶段前递写使能
    input      [  4:0] WB_fwd_wdest,// WB阶段前递写目标寄存器
    input      [ 31:0] WB_fwd_data,  // WB阶段前递数据
    output     [  4:0] EXE_wdest,    // EXE阶段写回目标寄存器

    output     [ 31:0] EXE_pc        // 输出当前PC值
);
//-----{ID->EXE流水线寄存器解析}begin
    wire        multiply;      // 乘法指令标志
    wire        mthi;         // MTHI指令标志
    wire        mtlo;         // MTLO指令标志
    wire [11:0] alu_control;  // ALU控制信号(12位，对应12种操作)
    wire [31:0] rs_raw_value; // rs寄存器原始值(未经前递)
    wire [31:0] rt_raw_value; // rt寄存器原始值(未经前递)
    wire [31:0] imm_ext;      // 立即数扩展值
    wire [31:0] sa_ext;       // 移位量扩展值
    wire [1:0]  op1_sel;      // ALU操作数1选择信号
    wire [1:0]  op2_sel;      // ALU操作数2选择信号
    wire [4:0]  rs;           // rs寄存器编号
    wire [4:0]  rt;           // rt寄存器编号
    wire [3:0]  mem_control;  // 内存访问控制信号
    wire        mfhi;         // MFHI指令标志
    wire        mflo;         // MFLO指令标志
    wire        mtc0;         // MTC0指令标志
    wire        mfc0;         // MFC0指令标志
    wire [7:0]  cp0r_addr;    // CP0寄存器地址
    wire        syscall;      // SYSCALL指令标志
    wire        eret;         // ERET指令标志
    wire        rf_wen;       // 寄存器堆写使能
    wire [4:0]  rf_wdest;     // 寄存器堆写目标寄存器
    wire [31:0] pc;           // 当前PC值

    assign {multiply,
            mthi,
            mtlo,
            alu_control,
            rs_raw_value,
            rt_raw_value,
            imm_ext,
            sa_ext,
            op1_sel,
            op2_sel,
            rs,
            rt,
            mem_control,
            mfhi,
            mflo,
            mtc0,
            mfc0,
            cp0r_addr,
            syscall,
            eret,
            rf_wen,
            rf_wdest,
            pc} = ID_EXE_bus_r;  // 从213位总线解析各字段
//-----{ID->EXE流水线寄存器解析}end

//-----{数据前递机制}begin
    // 数据前递(Forwarding)用于解决数据冒险
    // 当后续指令需要使用前面指令的结果时，可以通过前递直接传递，而不需要等待写回
    wire rs_from_mem;  // rs值是否从MEM阶段前递
    wire rs_from_wb;   // rs值是否从WB阶段前递
    wire rt_from_mem;  // rt值是否从MEM阶段前递
    wire rt_from_wb;   // rt值是否从WB阶段前递
    wire [31:0] rs_value; // rs寄存器最终值(经过前递)
    wire [31:0] rt_value; // rt寄存器最终值(经过前递)

    // 检测是否需要从MEM阶段前递
    // 条件：MEM阶段有写使能、rs/rt不为0、rs/rt与MEM写目标匹配
    assign rs_from_mem = MEM_fwd_wen & (rs != 5'd0) & (rs == MEM_fwd_wdest);
    assign rs_from_wb  = WB_fwd_wen  & (rs != 5'd0) & (rs == WB_fwd_wdest);
    assign rt_from_mem = MEM_fwd_wen & (rt != 5'd0) & (rt == MEM_fwd_wdest);
    assign rt_from_wb  = WB_fwd_wen  & (rt != 5'd0) & (rt == WB_fwd_wdest);

    // 前递优先级：MEM > WB > 原始值
    // MEM阶段的数据比WB阶段的数据更新，因此优先使用MEM阶段的前递
    assign rs_value = rs_from_mem ? MEM_fwd_data :
                      rs_from_wb  ? WB_fwd_data  : rs_raw_value;
    assign rt_value = rt_from_mem ? MEM_fwd_data :
                      rt_from_wb  ? WB_fwd_data  : rt_raw_value;
//-----{数据前递机制}end

//-----{ALU操作数选择}begin
    wire [31:0] alu_operand1; // ALU操作数1
    wire [31:0] alu_operand2; // ALU操作数2
    wire [31:0] store_data;   // 存储数据(用于SW/SB指令)

    // ALU操作数1选择：
    // op1_sel=2: PC值(用于JAL/JALR指令，计算返回地址)
    // op1_sel=1: 移位量sa_ext(用于移位指令)
    // op1_sel=0: rs寄存器值
    assign alu_operand1 = (op1_sel == 2'd2) ? pc     :
                          (op1_sel == 2'd1) ? sa_ext  : rs_value;
    
    // ALU操作数2选择：
    // op2_sel=2: 常数8(用于JAL/JALR指令，计算返回地址PC+8)
    // op2_sel=1: 立即数imm_ext(用于I型指令)
    // op2_sel=0: rt寄存器值
    assign alu_operand2 = (op2_sel == 2'd2) ? 32'd8  :
                          (op2_sel == 2'd1) ? imm_ext : rt_value;
    
    // 存储数据：直接使用rt寄存器值
    assign store_data   = rt_value;
//-----{ALU操作数选择}end

//-----{ALU运算}begin
    wire [31:0] alu_result; // ALU运算结果

    alu alu_module(
        .alu_control(alu_control), // ALU控制信号：指定运算类型
        .alu_src1   (alu_operand1), // ALU操作数1
        .alu_src2   (alu_operand2), // ALU操作数2
        .alu_result (alu_result)   // ALU运算结果
    );
//-----{ALU运算}end

//-----{乘法运算}begin
    wire        mult_begin;  // 乘法开始信号
    wire [63:0] product;     // 乘法结果(64位)
    wire        mult_end;    // 乘法结束信号

    // 当乘法指令有效且EXE阶段有效时，启动乘法运算
    assign mult_begin = multiply & EXE_valid;
    
    multiply multiply_module(
        .clk       (clk),        // 系统时钟
        .mult_begin(mult_begin), // 乘法开始信号
        .mult_op1  (alu_operand1), // 乘数1
        .mult_op2  (alu_operand2), // 乘数2
        .product   (product),   // 乘法结果：product[63:32]为HI，product[31:0]为LO
        .mult_end  (mult_end)   // 乘法完成信号
    );
    // 注意：乘法运算需要多个周期才能完成，因此会阻塞流水线
//-----{乘法运算}end

//-----{EXE阶段完成信号}begin
    // EXE阶段完成的条件：
    // 1. EXE阶段有效
    // 2. 如果是乘法指令，需要等待乘法完成
    // 3. 如果不是乘法指令，立即完成
    assign EXE_over = EXE_valid & (~multiply | mult_end);
//-----{EXE阶段完成信号}end

//-----{EXE阶段写回目标寄存器}begin
    // 输出EXE阶段的写回目标寄存器，用于数据冒险检测
    // 只有当EXE阶段有效时，才输出有效的写回目标寄存器
    assign EXE_wdest = rf_wdest & {5{EXE_valid}};
//-----{EXE阶段写回目标寄存器}end

//-----{EXE->MEM流水线寄存器总线}begin
    wire [31:0] exe_result;  // EXE阶段结果
    wire [31:0] lo_result;   // LO寄存器结果
    wire        hi_write;    // HI寄存器写使能
    wire        lo_write;    // LO寄存器写使能

    // EXE阶段结果选择：
    // MTHI指令：将操作数1写入HI寄存器
    // MTC0指令：将操作数2写入CP0寄存器
    // MULT指令：乘法结果的高32位(HI)
    // 其他指令：ALU结果
    assign exe_result = mthi     ? alu_operand1 :
                        mtc0     ? alu_operand2 :
                        multiply ? product[63:32] : alu_result;
    
    // LO寄存器结果：
    // MTLO指令：将操作数1写入LO寄存器
    // MULT指令：乘法结果的低32位(LO)
    assign lo_result  = mtlo ? alu_operand1 : product[31:0];
    
    // HI/LO寄存器写使能：乘法指令或MTHI/MTLO指令
    assign hi_write   = multiply | mthi;
    assign lo_write   = multiply | mtlo;

    // 打包EXE->MEM流水线寄存器总线(154位)
    assign EXE_MEM_bus = {mem_control,     // 内存访问控制(4位)
                          store_data,      // 存储数据(32位)
                          exe_result,      // EXE结果(32位)
                          lo_result,       // LO结果(32位)
                          hi_write,        // HI写使能(1位)
                          lo_write,        // LO写使能(1位)
                          mfhi,            // MFHI标志(1位)
                          mflo,            // MFLO标志(1位)
                          mtc0,            // MTC0标志(1位)
                          mfc0,            // MFC0标志(1位)
                          cp0r_addr,       // CP0寄存器地址(8位)
                          syscall,         // SYSCALL标志(1位)
                          eret,            // ERET标志(1位)
                          rf_wen,          // 寄存器堆写使能(1位)
                          rf_wdest,        // 寄存器堆写目标(5位)
                          pc};             // PC值(32位)
//-----{EXE->MEM流水线寄存器总线}end

    assign EXE_pc = pc;  // 输出当前PC值用于调试
endmodule