`timescale 1ns / 1ps
//*****************************************************************************
//   > 文件名: decode.v
//   > 功能  : 五级流水线CPU译码阶段(ID阶段)
//   > 描述  : 指令译码、分支跳转判断、数据冒险检测、前递控制
//   > 作者  : LOONGSON
//   > 日期  : 2016-04-14
//*****************************************************************************/
module decode(
    input              ID_valid,        // ID阶段有效标志
    input      [ 63:0] IF_ID_bus_r,   // IF->ID流水线寄存器
    input      [ 31:0] rs_value,      // 从寄存器堆读取的rs值
    input      [ 31:0] rt_value,      // 从寄存器堆读取的rt值
    output     [  4:0] rs,             // 输出rs寄存器编号
    output     [  4:0] rt,             // 输出rt寄存器编号
    output     [ 32:0] jbr_bus,       // 分支跳转总线：{taken, target}
    output             ID_over,        // ID阶段完成信号
    output     [212:0] ID_EXE_bus,    // ID->EXE流水线寄存器总线

    // 数据冒险检测和前递接口
    input              IF_over,        // IF阶段完成信号
    input      [  4:0] EXE_wdest,     // EXE阶段写回目标寄存器
    input              EXE_slow_result,// EXE阶段结果是否需要延迟(load/mfhi/mflo)
    input      [  4:0] MEM_wdest,     // MEM阶段写回目标寄存器
    input              MEM_slow_result,// MEM阶段结果是否需要延迟
    input              MEM_fwd_wen,    // MEM阶段前递写使能
    input      [  4:0] MEM_fwd_wdest, // MEM阶段前递写目标寄存器
    input      [ 31:0] MEM_fwd_data,  // MEM阶段前递数据
    input              WB_fwd_wen,     // WB阶段前递写使能
    input      [  4:0] WB_fwd_wdest,  // WB阶段前递写目标寄存器
    input      [ 31:0] WB_fwd_data,   // WB阶段前递数据
    input      [  4:0] WB_wdest,      // WB阶段写回目标寄存器

    output     [ 31:0] ID_pc          // 输出当前PC值
);
//-----{IF->ID流水线寄存器解析}begin
    wire [31:0] pc;      // 当前指令的PC值
    wire [31:0] inst;    // 当前指令内容
    assign {pc, inst} = IF_ID_bus_r;  // 从64位总线解析PC和指令
//-----{IF->ID流水线寄存器解析}end

//-----{指令译码：解析指令字段}begin
    wire [5:0] op;       // 操作码字段(6位)
    wire [4:0] rd;       // 目标寄存器字段(5位)
    wire [4:0] sa;       // 移位量字段(5位)
    wire [5:0] funct;    // 功能码字段(6位)
    wire [15:0] imm;     // 立即数字段(16位)
    wire [15:0] offset;  // 分支偏移量字段(16位)
    wire [25:0] target;  // 跳转目标字段(26位)
    wire [2:0] cp0r_sel; // CP0寄存器选择字段(3位)

    assign op       = inst[31:26];  // 操作码：指令高6位
    assign rs       = inst[25:21];  // 源寄存器1：第25-21位
    assign rt       = inst[20:16];  // 源寄存器2/目标寄存器：第20-16位
    assign rd       = inst[15:11];  // 目标寄存器：第15-11位
    assign sa       = inst[10:6];   // 移位量：第10-6位
    assign funct    = inst[5:0];    // 功能码：指令低6位
    assign imm      = inst[15:0];   // 立即数：第15-0位
    assign offset   = inst[15:0];   // 分支偏移量：第15-0位
    assign target   = inst[25:0];   // 跳转目标地址：第25-0位
    assign cp0r_sel = inst[2:0];    // CP0寄存器选择：第2-0位

    // 指令类型识别信号
    wire inst_ADDU, inst_SUBU , inst_SLT , inst_AND;   // R型指令：加、减、比较、与
    wire inst_NOR , inst_OR   , inst_XOR , inst_SLL;   // R型指令：或非、或、异或、左移
    wire inst_SRL , inst_ADDIU, inst_BEQ , inst_BNE;   // 移位、加立即数、分支
    wire inst_LW  , inst_SW   , inst_LUI , inst_J;     // load/store、LUI、跳转
    wire inst_SLTU, inst_JALR , inst_JR  , inst_SLLV;  // 无符号比较、跳转链接、寄存器跳转
    wire inst_SRA , inst_SRAV , inst_SRLV, inst_SLTIU;  // 算术右移、立即数比较
    wire inst_SLTI, inst_BGEZ , inst_BGTZ, inst_BLEZ;   // 立即数比较、分支指令
    wire inst_BLTZ, inst_LB   , inst_LBU , inst_SB;    // 分支、字节load/store
    wire inst_ANDI, inst_ORI  , inst_XORI, inst_JAL;   // 立即数逻辑运算、跳转链接
    wire inst_MULT, inst_MFLO , inst_MFHI, inst_MTLO;  // 乘法、HI/LO寄存器操作
    wire inst_MTHI, inst_MFC0 , inst_MTC0;             // HI/LO、CP0寄存器操作
    wire inst_ERET, inst_SYSCALL;                      // 异常返回、系统调用
    wire op_zero;   // 操作码为0的标志(R型指令)
    wire sa_zero;   // 移位量为0的标志

    // 指令译码逻辑：根据操作码和功能码识别具体指令
    assign op_zero = ~(|op);  // 检测操作码是否为0(R型指令标志)
    assign sa_zero = ~(|sa);  // 检测移位量是否为0
    
    // R型指令译码(op=0，通过funct字段区分)
    assign inst_ADDU    = op_zero & sa_zero    & (funct == 6'b100001);  // ADDU: 无符号加法
    assign inst_SUBU    = op_zero & sa_zero    & (funct == 6'b100011);  // SUBU: 无符号减法
    assign inst_SLT     = op_zero & sa_zero    & (funct == 6'b101010);  // SLT: 有符号比较
    assign inst_SLTU    = op_zero & sa_zero    & (funct == 6'b101011);  // SLTU: 无符号比较
    assign inst_JALR    = op_zero & (rt==5'd0) & (rd==5'd31) & sa_zero & (funct == 6'b001001);  // JALR: 跳转链接寄存器
    assign inst_JR      = op_zero & (rt==5'd0) & (rd==5'd0 ) & sa_zero & (funct == 6'b001000);  // JR: 寄存器跳转
    assign inst_AND     = op_zero & sa_zero    & (funct == 6'b100100);  // AND: 按位与
    assign inst_NOR     = op_zero & sa_zero    & (funct == 6'b100111);  // NOR: 按位或非
    assign inst_OR      = op_zero & sa_zero    & (funct == 6'b100101);  // OR: 按位或
    assign inst_XOR     = op_zero & sa_zero    & (funct == 6'b100110);  // XOR: 按位异或
    assign inst_SLL     = op_zero & (rs==5'd0) & (funct == 6'b000000);  // SLL: 逻辑左移(移位量为sa)
    assign inst_SLLV    = op_zero & sa_zero    & (funct == 6'b000100);  // SLLV: 逻辑左移(移位量为rs)
    assign inst_SRA     = op_zero & (rs==5'd0) & (funct == 6'b000011);  // SRA: 算术右移(移位量为sa)
    assign inst_SRAV    = op_zero & sa_zero    & (funct == 6'b000111);  // SRAV: 算术右移(移位量为rs)
    assign inst_SRL     = op_zero & (rs==5'd0) & (funct == 6'b000010);  // SRL: 逻辑右移(移位量为sa)
    assign inst_SRLV    = op_zero & sa_zero    & (funct == 6'b000110);  // SRLV: 逻辑右移(移位量为rs)
    assign inst_MULT    = op_zero & (rd==5'd0) & sa_zero & (funct == 6'b011000);  // MULT: 乘法
    assign inst_MFLO    = op_zero & (rs==5'd0) & (rt==5'd0) & sa_zero & (funct == 6'b010010);  // MFLO: 从LO寄存器读取
    assign inst_MFHI    = op_zero & (rs==5'd0) & (rt==5'd0) & sa_zero & (funct == 6'b010000);  // MFHI: 从HI寄存器读取
    assign inst_MTLO    = op_zero & (rt==5'd0) & (rd==5'd0) & sa_zero & (funct == 6'b010011);  // MTLO: 写入LO寄存器
    assign inst_MTHI    = op_zero & (rt==5'd0) & (rd==5'd0) & sa_zero & (funct == 6'b010001);  // MTHI: 写入HI寄存器
    
    // I型指令译码(通过op字段区分)
    assign inst_ADDIU   = (op == 6'b001001);  // ADDIU: 加立即数
    assign inst_SLTI    = (op == 6'b001010);  // SLTI: 有符号比较立即数
    assign inst_SLTIU   = (op == 6'b001011);  // SLTIU: 无符号比较立即数
    assign inst_BEQ     = (op == 6'b000100);  // BEQ: 相等分支
    assign inst_BGEZ    = (op == 6'b000001) & (rt==5'd1);  // BGEZ: 大于等于0分支
    assign inst_BGTZ    = (op == 6'b000111) & (rt==5'd0);  // BGTZ: 大于0分支
    assign inst_BLEZ    = (op == 6'b000110) & (rt==5'd0);  // BLEZ: 小于等于0分支
    assign inst_BLTZ    = (op == 6'b000001) & (rt==5'd0);  // BLTZ: 小于0分支
    assign inst_BNE     = (op == 6'b000101);  // BNE: 不相等分支
    assign inst_LW      = (op == 6'b100011);  // LW: 加载字
    assign inst_SW      = (op == 6'b101011);  // SW: 存储字
    assign inst_LB      = (op == 6'b100000);  // LB: 加载字节(有符号)
    assign inst_LBU     = (op == 6'b100100);  // LBU: 加载字节(无符号)
    assign inst_SB      = (op == 6'b101000);  // SB: 存储字节
    assign inst_ANDI    = (op == 6'b001100);  // ANDI: 立即数与
    assign inst_LUI     = (op == 6'b001111) & (rs==5'd0);  // LUI: 加载立即数到高位
    assign inst_ORI     = (op == 6'b001101);  // ORI: 立即数或
    assign inst_XORI    = (op == 6'b001110);  // XORI: 立即数异或
    
    // J型指令译码
    assign inst_J       = (op == 6'b000010);  // J: 无条件跳转
    assign inst_JAL     = (op == 6'b000011);  // JAL: 跳转链接
    
    // CP0指令译码
    assign inst_MFC0    = (op == 6'b010000) & (rs==5'd0)  & sa_zero & (funct[5:3] == 3'b000);  // MFC0: 从CP0读取
    assign inst_MTC0    = (op == 6'b010000) & (rs==5'd4)  & sa_zero & (funct[5:3] == 3'b000);  // MTC0: 写入CP0
    
    // 特殊指令译码
    assign inst_SYSCALL = (op == 6'b000000) & (funct == 6'b001100);  // SYSCALL: 系统调用
    assign inst_ERET    = (op == 6'b010000) & (rs==5'd16) & (rt==5'd0)
                        & (rd==5'd0) & sa_zero & (funct == 6'b011000);  // ERET: 异常返回

    wire inst_jr;
    wire inst_j_link;
    wire inst_jbr;
    assign inst_jr     = inst_JALR | inst_JR;
    assign inst_j_link = inst_JAL  | inst_JALR;
    assign inst_jbr    = inst_J    | inst_JAL  | inst_jr
                       | inst_BEQ  | inst_BNE  | inst_BGEZ
                       | inst_BGTZ | inst_BLEZ | inst_BLTZ;

    wire inst_load;
    wire inst_store;
    assign inst_load  = inst_LW | inst_LB | inst_LBU;
    assign inst_store = inst_SW | inst_SB;

    wire inst_add, inst_sub, inst_slt, inst_sltu;
    wire inst_and, inst_nor, inst_or, inst_xor;
    wire inst_sll, inst_srl, inst_sra, inst_lui;
    assign inst_add  = inst_ADDU | inst_ADDIU | inst_load | inst_store | inst_j_link;
    assign inst_sub  = inst_SUBU;
    assign inst_slt  = inst_SLT | inst_SLTI;
    assign inst_sltu = inst_SLTIU | inst_SLTU;
    assign inst_and  = inst_AND | inst_ANDI;
    assign inst_nor  = inst_NOR;
    assign inst_or   = inst_OR  | inst_ORI;
    assign inst_xor  = inst_XOR | inst_XORI;
    assign inst_sll  = inst_SLL | inst_SLLV;
    assign inst_srl  = inst_SRL | inst_SRLV;
    assign inst_sra  = inst_SRA | inst_SRAV;
    assign inst_lui  = inst_LUI;

    wire inst_shf_sa;
    assign inst_shf_sa = inst_SLL | inst_SRL | inst_SRA;

    wire inst_imm_zero;
    wire inst_imm_sign;
    assign inst_imm_zero = inst_ANDI | inst_LUI | inst_ORI | inst_XORI;
    assign inst_imm_sign = inst_ADDIU | inst_SLTI | inst_SLTIU | inst_load | inst_store;

    wire inst_wdest_rt;
    wire inst_wdest_31;
    wire inst_wdest_rd;
    assign inst_wdest_rt = inst_imm_zero | inst_ADDIU | inst_SLTI
                         | inst_SLTIU    | inst_load  | inst_MFC0;
    assign inst_wdest_31 = inst_JAL;
    assign inst_wdest_rd = inst_ADDU | inst_SUBU | inst_SLT  | inst_SLTU
                         | inst_JALR | inst_AND  | inst_NOR  | inst_OR
                         | inst_XOR  | inst_SLL  | inst_SLLV | inst_SRA
                         | inst_SRAV | inst_SRL  | inst_SRLV | inst_MFHI
                         | inst_MFLO;
//-----{instruction decode}end

//-----{ID阶段的分支跳转处理}begin
    // ID阶段的控制流使用寄存器操作数，此时EXE阶段的前递还未发生
    // 因此分支/JR/JALR指令的比较需要自己的MEM/WB前递路径
    // 这是解决数据冒险的关键：在ID阶段就进行前递，而不是等到EXE阶段
    wire rs_from_mem_id;  // rs值是否从MEM阶段前递
    wire rs_from_wb_id;   // rs值是否从WB阶段前递
    wire rt_from_mem_id;  // rt值是否从MEM阶段前递
    wire rt_from_wb_id;   // rt值是否从WB阶段前递
    wire [31:0] rs_value_id; // rs寄存器最终值(经过前递)
    wire [31:0] rt_value_id; // rt寄存器最终值(经过前递)

    // 检测是否需要从MEM阶段前递
    // 条件：MEM阶段有写使能、rs/rt不为0、rs/rt与MEM写目标匹配
    assign rs_from_mem_id = MEM_fwd_wen & (rs != 5'd0) & (rs == MEM_fwd_wdest);
    assign rs_from_wb_id  = WB_fwd_wen  & (rs != 5'd0) & (rs == WB_fwd_wdest);
    assign rt_from_mem_id = MEM_fwd_wen & (rt != 5'd0) & (rt == MEM_fwd_wdest);
    assign rt_from_wb_id  = WB_fwd_wen  & (rt != 5'd0) & (rt == WB_fwd_wdest);

    // 前递优先级：MEM > WB > 原始值
    // MEM阶段的数据比WB阶段的数据更新，因此优先使用MEM阶段的前递
    assign rs_value_id = rs_from_mem_id ? MEM_fwd_data :
                         rs_from_wb_id  ? WB_fwd_data  : rs_value;
    assign rt_value_id = rt_from_mem_id ? MEM_fwd_data :
                         rt_from_wb_id  ? WB_fwd_data  : rt_value;

    wire [31:0] bd_pc;  // 分支延迟槽PC值(PC+4)
    assign bd_pc = pc + 32'd4;  // 计算下一条指令的PC值

    // 跳转指令(J/JAL/JR/JALR)处理
    wire        j_taken;   // 跳转是否发生
    wire [31:0] j_target;  // 跳转目标地址
    assign j_taken  = inst_J | inst_JAL | inst_jr;  // J/JAL/JR指令都会跳转
    // JR指令：跳转到rs寄存器值
    // J/JAL指令：跳转目标地址 = {PC[31:28], target字段, 00}
    assign j_target = inst_jr ? rs_value_id : {bd_pc[31:28], target, 2'b00};

    // 分支条件判断
    wire rs_equql_rt;  // rs是否等于rt
    wire rs_ez;        // rs是否等于0
    wire rs_ltz;       // rs是否小于0
    assign rs_equql_rt = (rs_value_id == rt_value_id);  // rs与rt相等
    assign rs_ez       = ~(|rs_value_id);  // rs为0(所有位都为0)
    assign rs_ltz      = rs_value_id[31];  // rs为负数(符号位为1)

    // 分支指令(BEQ/BNE/BGEZ/BGTZ/BLEZ/BLTZ)处理
    wire        br_taken;   // 分支是否发生
    wire [31:0] br_target;  // 分支目标地址
    // 分支条件：
    // BEQ: rs == rt
    // BNE: rs != rt
    // BGEZ: rs >= 0 (不小于0)
    // BGTZ: rs > 0 (不小于0且不等于0)
    // BLEZ: rs <= 0 (小于0或等于0)
    // BLTZ: rs < 0
    assign br_taken = inst_BEQ  & rs_equql_rt
                    | inst_BNE  & ~rs_equql_rt
                    | inst_BGEZ & ~rs_ltz
                    | inst_BGTZ & ~rs_ltz & ~rs_ez
                    | inst_BLEZ & (rs_ltz | rs_ez)
                    | inst_BLTZ & rs_ltz;
    // 分支目标地址 = PC+4 + (offset << 2)
    // offset是16位有符号数，需要符号扩展到32位，然后左移2位(乘4)
    assign br_target[31:2] = bd_pc[31:2] + {{14{offset[15]}}, offset};
    assign br_target[1:0]  = bd_pc[1:0];

    // 分支跳转总线输出
    wire        jbr_taken;   // 分支跳转是否发生
    wire [31:0] jbr_target;  // 分支跳转目标地址
    // 分支跳转发生条件：跳转或分支条件满足，且ID阶段完成
    // ID_over确保只有在ID阶段完成时才发生跳转
    assign jbr_taken  = (j_taken | br_taken) & ID_over;
    // 跳转目标选择：跳转指令使用j_target，分支指令使用br_target
    assign jbr_target = j_taken ? j_target : br_target;
    // 打包分支跳转总线：{1位taken标志, 32位目标地址}
    assign jbr_bus    = {jbr_taken, jbr_target};
//-----{ID阶段的分支跳转处理}end

//-----{数据冒险检测}begin
    // 数据冒险检测：判断是否需要暂停流水线等待数据
    // 分为两类：ID阶段读取的指令(EXE阶段还未计算结果)和EXE阶段读取的指令
    wire rs_read_id;   // rs是否在ID阶段被读取(分支/JR指令)
    wire rt_read_id;   // rt是否在ID阶段被读取(BEQ/BNE指令)
    wire rs_read_exe;  // rs是否在EXE阶段被读取(大多数指令)
    wire rt_read_exe;  // rt是否在EXE阶段被读取

    // ID阶段读取rs的指令：JR/JALR(跳转地址)、分支指令(分支条件)
    assign rs_read_id  = inst_JR | inst_JALR | inst_BEQ | inst_BNE
                       | inst_BGEZ | inst_BGTZ | inst_BLEZ | inst_BLTZ;
    // ID阶段读取rt的指令：BEQ/BNE(比较rs和rt)
    assign rt_read_id  = inst_BEQ | inst_BNE;

    // EXE阶段读取rs的指令：大多数R型和I型指令
    assign rs_read_exe = inst_ADDU | inst_SUBU | inst_SLT  | inst_SLTU
                       | inst_AND  | inst_NOR  | inst_OR   | inst_XOR
                       | inst_SLLV | inst_SRLV | inst_SRAV | inst_ADDIU
                       | inst_SLTI | inst_SLTIU| inst_ANDI | inst_ORI
                       | inst_XORI | inst_load | inst_store| inst_MULT
                       | inst_MTHI | inst_MTLO | inst_MTC0;
    // EXE阶段读取rt的指令：R型指令、SW/SB、MULT、MTC0
    assign rt_read_exe = inst_ADDU | inst_SUBU | inst_SLT  | inst_SLTU
                       | inst_AND  | inst_NOR  | inst_OR   | inst_XOR
                       | inst_SLLV | inst_SRLV | inst_SRAV | inst_SW
                       | inst_SB   | inst_MULT | inst_MTC0;

    // 数据依赖检测：判断当前指令是否依赖前面指令的结果
    wire exe_dep_rs;  // rs是否依赖EXE阶段的结果
    wire exe_dep_rt;  // rt是否依赖EXE阶段的结果
    wire mem_dep_rs;  // rs是否依赖MEM阶段的结果
    wire mem_dep_rt;  // rt是否依赖MEM阶段的结果
    wire wb_dep_rs;   // rs是否依赖WB阶段的结果
    wire wb_dep_rt;   // rt是否依赖WB阶段的结果

    // 依赖条件：寄存器不为0(寄存器0始终为0，无依赖)、寄存器与写目标匹配
    assign exe_dep_rs = (rs != 5'd0) & (rs == EXE_wdest);
    assign exe_dep_rt = (rt != 5'd0) & (rt == EXE_wdest);
    assign mem_dep_rs = (rs != 5'd0) & (rs == MEM_wdest);
    assign mem_dep_rt = (rt != 5'd0) & (rt == MEM_wdest);
    assign wb_dep_rs  = (rs != 5'd0) & (rs == WB_wdest);
    assign wb_dep_rt  = (rt != 5'd0) & (rt == WB_wdest);

    // 流水线暂停判断：判断是否需要暂停流水线等待数据
    wire rs_wait_id;   // ID阶段是否需要等待rs数据
    wire rt_wait_id;   // ID阶段是否需要等待rt数据
    wire rs_wait_exe;  // EXE阶段是否需要等待rs数据
    wire rt_wait_exe;  // EXE阶段是否需要等待rt数据
    wire rs_wait;      // rs是否需要等待
    wire rt_wait;      // rt是否需要等待

    // ID阶段等待条件：
    // ID阶段读取rs/rt，且EXE阶段正在计算结果(无法前递)
    // 或者MEM阶段正在计算结果且结果延迟(load/mfhi/mflo指令)
    assign rs_wait_id  = rs_read_id & (exe_dep_rs | (mem_dep_rs & MEM_slow_result));
    assign rt_wait_id  = rt_read_id & (exe_dep_rt | (mem_dep_rt & MEM_slow_result));
    
    // EXE阶段等待条件：
    // EXE阶段读取rs/rt，且EXE阶段结果延迟(load/mfhi/mflo指令)
    // 或者MEM阶段结果延迟(load/mfhi/mflo指令)
    assign rs_wait_exe = rs_read_exe & ((exe_dep_rs & EXE_slow_result) | (mem_dep_rs & MEM_slow_result));
    assign rt_wait_exe = rt_read_exe & ((exe_dep_rt & EXE_slow_result) | (mem_dep_rt & MEM_slow_result));
    
    // 总等待条件：ID阶段或EXE阶段需要等待
    assign rs_wait     = rs_wait_id | rs_wait_exe;
    assign rt_wait     = rt_wait_id | rt_wait_exe;

    // ID阶段完成条件：
    // ID阶段有效、不需要等待数据、非分支跳转指令或IF阶段完成
    // 分支跳转指令需要等待IF阶段完成，确保指令已取回
    assign ID_over = ID_valid & ~rs_wait & ~rt_wait & (~inst_jbr | IF_over);
//-----{数据冒险检测}end

//-----{ID->EXE流水线寄存器总线}begin
    // 控制信号和立即数扩展
    wire       multiply;      // 乘法指令标志
    wire       mthi;         // MTHI指令标志
    wire       mtlo;         // MTLO指令标志
    wire [11:0] alu_control;  // ALU控制信号(12位，对应12种操作)
    wire [31:0] imm_ext;      // 立即数扩展值
    wire [31:0] sa_ext;       // 移位量扩展值
    wire [1:0]  op1_sel;      // ALU操作数1选择信号
    wire [1:0]  op2_sel;      // ALU操作数2选择信号

    assign multiply = inst_MULT;  // MULT指令
    assign mthi     = inst_MTHI;  // MTHI指令
    assign mtlo     = inst_MTLO;  // MTLO指令

    // 立即数扩展：
    // inst_imm_zero：零扩展(ANDI/ORI/XORI/LUI)，高位填0
    // inst_imm_sign：符号扩展(ADDIU/SLTI/SLTIU/load/store)，高位填符号位
    assign imm_ext = inst_imm_zero ? {16'd0, imm} :
                     inst_imm_sign ? {{16{imm[15]}}, imm} : 32'd0;
    assign sa_ext  = {27'd0, sa};  // 移位量扩展：5位扩展到32位，高位填0
    
    // ALU操作数选择：
    // op1_sel: 0=rs值, 1=sa移位量, 2=PC值(JAL/JALR)
    // op2_sel: 0=rt值, 1=立即数, 2=常数8(JAL/JALR)
    assign op1_sel = inst_j_link ? 2'd2 :
                     inst_shf_sa ? 2'd1 : 2'd0;
    assign op2_sel = inst_j_link ? 2'd2 :
                     (inst_imm_zero | inst_imm_sign) ? 2'd1 : 2'd0;

    // ALU控制信号打包：12位控制信号，每位对应一种ALU操作
    // inst_add: 加法(ADDU/ADDIU/LW/SW/JAL)
    // inst_sub: 减法(SUBU)
    // inst_slt: 有符号比较(SLT/SLTI)
    // inst_sltu: 无符号比较(SLTU/SLTIU)
    // inst_and: 按位与(AND/ANDI)
    // inst_nor: 按位或非(NOR)
    // inst_or: 按位或(OR/ORI)
    // inst_xor: 按位异或(XOR/XORI)
    // inst_sll: 逻辑左移(SLL/SLLV)
    // inst_srl: 逻辑右移(SRL/SRLV)
    // inst_sra: 算术右移(SRA/SRAV)
    // inst_lui: LUI指令
    assign alu_control = {inst_add,
                          inst_sub,
                          inst_slt,
                          inst_sltu,
                          inst_and,
                          inst_nor,
                          inst_or,
                          inst_xor,
                          inst_sll,
                          inst_srl,
                          inst_sra,
                          inst_lui};

    // 内存访问控制信号
    wire lb_sign;      // LB指令标志(有符号字节加载)
    wire ls_word;      // LW/SW指令标志(字访问)
    wire [3:0] mem_control;  // 内存访问控制信号
    assign lb_sign     = inst_LB;  // LB指令
    assign ls_word     = inst_LW | inst_SW;  // LW或SW指令
    // mem_control: {load标志, store标志, 字访问标志, 有符号字节标志}
    assign mem_control = {inst_load, inst_store, ls_word, lb_sign};

    // CP0和特殊指令控制信号
    wire       mfhi;        // MFHI指令标志
    wire       mflo;        // MFLO指令标志
    wire       mtc0;        // MTC0指令标志
    wire       mfc0;        // MFC0指令标志
    wire [7:0] cp0r_addr;   // CP0寄存器地址
    wire       syscall;     // SYSCALL指令标志
    wire       eret;        // ERET指令标志
    wire       rf_wen;      // 寄存器堆写使能
    wire [4:0] rf_wdest;    // 寄存器堆写目标寄存器

    assign syscall   = inst_SYSCALL;  // SYSCALL指令
    assign eret      = inst_ERET;     // ERET指令
    assign mfhi      = inst_MFHI;     // MFHI指令
    assign mflo      = inst_MFLO;     // MFLO指令
    assign mtc0      = inst_MTC0;     // MTC0指令
    assign mfc0      = inst_MFC0;     // MFC0指令
    // CP0寄存器地址：{5位寄存器号, 3位选择字段}
    assign cp0r_addr = {rd, cp0r_sel};
    // 寄存器堆写使能：写目标为rt/31/rd的指令
    assign rf_wen    = inst_wdest_rt | inst_wdest_31 | inst_wdest_rd;
    // 寄存器堆写目标选择：
    // inst_wdest_rt: I型指令，写rt寄存器
    // inst_wdest_31: JAL指令，写寄存器31
    // inst_wdest_rd: R型指令，写rd寄存器
    assign rf_wdest  = inst_wdest_rt ? rt   :
                       inst_wdest_31 ? 5'd31:
                       inst_wdest_rd ? rd   : 5'd0;

    // 打包ID->EXE流水线寄存器总线(213位)
    // 包含所有需要传递到EXE阶段的控制信号和数据
    assign ID_EXE_bus = {multiply,        // 乘法标志(1位)
                         mthi,            // MTHI标志(1位)
                         mtlo,            // MTLO标志(1位)
                         alu_control,     // ALU控制(12位)
                         rs_value,        // rs寄存器值(32位)
                         rt_value,        // rt寄存器值(32位)
                         imm_ext,         // 立即数扩展(32位)
                         sa_ext,          // 移位量扩展(32位)
                         op1_sel,         // 操作数1选择(2位)
                         op2_sel,         // 操作数2选择(2位)
                         rs,              // rs寄存器编号(5位)
                         rt,              // rt寄存器编号(5位)
                         mem_control,     // 内存访问控制(4位)
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
//-----{ID->EXE流水线寄存器总线}end

    assign ID_pc = pc;
endmodule