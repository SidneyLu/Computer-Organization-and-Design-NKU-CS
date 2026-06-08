`timescale 1ns / 1ps
//*************************************************************************
//   > 文件名: mem.v
//   > 功能  : 五级流水线CPU访存阶段(MEM阶段)
//   > 描述  : load/store操作、字节/字访问处理、结果传递
//   > 作者  : LOONGSON
//   > 日期  : 2016-04-14
//*************************************************************************
module mem(                          // 访存阶段模块
    input              clk,          // 系统时钟
    input              MEM_valid,    // MEM阶段有效标志
    input      [153:0] EXE_MEM_bus_r,// EXE->MEM流水线寄存器
    input      [ 31:0] dm_rdata,     // 从数据RAM读取的数据
    output     [ 31:0] dm_addr,      // 输出到数据RAM的地址
    output reg [  3:0] dm_wen,       // 数据RAM写使能(4位，对应4字节)
    output reg [ 31:0] dm_wdata,     // 输出到数据RAM的写数据
    output             MEM_over,     // MEM阶段完成信号
    output     [117:0] MEM_WB_bus,   // MEM->WB流水线寄存器总线
    
    //5级流水线控制接口
    input              MEM_allow_in, // MEM阶段是否允许新指令进入
    output     [  4:0] MEM_wdest,    // MEM阶段写回目标寄存器
     
    //调试接口：输出当前PC值
    output     [ 31:0] MEM_pc
);
//-----{EXE->MEM流水线寄存器解析}begin
    // load/store指令控制信号
    wire [3 :0] mem_control;  // 内存访问控制信号：{load, store, word, byte}
    wire [31:0] store_data;   // store指令的存储数据
    
    // EXE阶段的HI/LO寄存器操作结果
    wire [31:0] exe_result;   // EXE阶段结果
    wire [31:0] lo_result;    // LO寄存器结果
    wire        hi_write;     // HI寄存器写使能
    wire        lo_write;     // LO寄存器写使能
    
    // 其他控制信号
    wire mfhi;                // MFHI指令标志
    wire mflo;                // MFLO指令标志
    wire mtc0;                // MTC0指令标志
    wire mfc0;                // MFC0指令标志
    wire [7 :0] cp0r_addr;    // CP0寄存器地址
    wire       syscall;       // SYSCALL指令标志
    wire       eret;          // ERET指令标志
    wire       rf_wen;        // 寄存器堆写使能
    wire [4:0] rf_wdest;      // 寄存器堆写目标寄存器
    
    wire [31:0] pc;           // 当前PC值
    assign {mem_control,
            store_data,
            exe_result,
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
            rf_wen,
            rf_wdest,
            pc         } = EXE_MEM_bus_r;  // 从154位总线解析各字段
//-----{EXE->MEM流水线寄存器解析}end

//-----{load/store指令处理}begin
    wire inst_load;  // load指令标志
    wire inst_store; // store指令标志
    wire ls_word;    // load/store字标志：0=字节，1=字
    wire lb_sign;    // load字节有符号扩展标志
    assign {inst_load,inst_store,ls_word,lb_sign} = mem_control;

    // 输出内存访问地址：使用EXE阶段计算的结果
    assign dm_addr = exe_result;
    
    // store指令写使能控制
    // SW指令：写整个字(4字节)，写使能全为1
    // SB指令：写单个字节，根据地址低2位选择写使能位
    always @ (*)    // 组合逻辑
    begin
        if (MEM_valid && inst_store) // MEM阶段有效且为store指令
        begin
            if (ls_word)  // SW指令：写字
            begin
                dm_wen <= 4'b1111; // 所有字节写使能都为1
            end
            else  // SB指令：写字节
            begin
                // 根据地址低2位选择写哪个字节
                case (dm_addr[1:0])
                    2'b00   : dm_wen <= 4'b0001; // 写第0字节
                    2'b01   : dm_wen <= 4'b0010; // 写第1字节
                    2'b10   : dm_wen <= 4'b0100; // 写第2字节
                    2'b11   : dm_wen <= 4'b1000; // 写第3字节
                    default : dm_wen <= 4'b0000;
                endcase
            end
        end
        else
        begin
            dm_wen <= 4'b0000; // 非store指令，写使能全为0
        end
    end 
    
    // store指令写数据控制
    // SB指令需要将8位数据扩展到正确的字节位置
    always @ (*)  // 组合逻辑
    begin
        case (dm_addr[1:0])
            2'b00   : dm_wdata <= store_data;                     // 字节0：数据在低8位
            2'b01   : dm_wdata <= {16'd0, store_data[7:0], 8'd0};  // 字节1：数据在第8-15位
            2'b10   : dm_wdata <= {8'd0, store_data[7:0], 16'd0};  // 字节2：数据在第16-23位
            2'b11   : dm_wdata <= {store_data[7:0], 24'd0};        // 字节3：数据在第24-31位
            default : dm_wdata <= store_data;
        endcase
    end
    
    // load指令数据处理
    // LB指令需要从正确的字节位置读取数据并进行符号扩展
    wire        load_sign;    // load字节的符号位
    wire [31:0] load_result;  // load指令的结果
    
    // 提取字节的符号位(用于LB指令的符号扩展)
    assign load_sign = (dm_addr[1:0]==2'd0) ? dm_rdata[ 7] :
                       (dm_addr[1:0]==2'd1) ? dm_rdata[15] :
                       (dm_addr[1:0]==2'd2) ? dm_rdata[23] : dm_rdata[31] ;
    
    // 提取8位字节数据
    assign load_result[7:0] = (dm_addr[1:0]==2'd0) ? dm_rdata[ 7:0 ] :
                               (dm_addr[1:0]==2'd1) ? dm_rdata[15:8 ] :
                               (dm_addr[1:0]==2'd2) ? dm_rdata[23:16] :
                                                      dm_rdata[31:24] ;
    
    // 高24位处理：
    // LW指令：直接使用RAM返回的数据
    // LB指令：进行符号扩展(如果lb_sign=1且load_sign=1，则扩展为全1)
    assign load_result[31:8]= ls_word ? dm_rdata[31:8] : {24{lb_sign & load_sign}};
//-----{load/store指令处理}end

//-----{MEM阶段完成信号}begin
    // 由于数据RAM是同步RAM，load指令需要一个周期才能返回数据
    // 因此load指令需要等待一个周期，MEM_over才能有效
    // 非load指令可以立即完成
    reg MEM_valid_r;  // MEM有效信号延迟一周期
    always @(posedge clk)
    begin
        if (MEM_allow_in)  // 允许新指令进入时，清空延迟信号
        begin
            MEM_valid_r <= 1'b0;
        end
        else  // 否则保存当前MEM有效信号
        begin
            MEM_valid_r <= MEM_valid;
        end
    end
    
    // MEM阶段完成信号：
    // load指令：需要等待RAM返回数据(延迟一周期)
    // 非load指令：立即完成
    assign MEM_over = inst_load ? MEM_valid_r : MEM_valid;
//-----{MEM阶段完成信号}end

//-----{MEM阶段写回目标寄存器}begin
    // 输出MEM阶段的写回目标寄存器，用于数据冒险检测
    // 只有当MEM阶段有效时，才输出有效的写回目标寄存器
    assign MEM_wdest = rf_wdest & {5{MEM_valid}};
//-----{MEM阶段写回目标寄存器}end

//-----{MEM->WB流水线寄存器总线}begin
    wire [31:0] mem_result; // MEM阶段结果
    
    // MEM阶段结果选择：
    // load指令：使用从RAM读取的数据
    // 非load指令：使用EXE阶段的结果
    assign mem_result = inst_load ? load_result : exe_result;
    
    // 打包MEM->WB流水线寄存器总线(118位)
    assign MEM_WB_bus = {rf_wen,rf_wdest,                   // 寄存器堆写使能和目标(6位)
                         mem_result,                        // MEM结果(32位)
                         lo_result,                         // LO结果(32位)
                         hi_write,lo_write,                 // HI/LO写使能(2位)
                         mfhi,mflo,                         // MFHI/MFLO标志(2位)
                         mtc0,mfc0,cp0r_addr,syscall,eret,  // CP0和异常标志(13位)
                         pc};                               // PC值(32位)
//-----{MEM->WB流水线寄存器总线}end

//-----{调试接口：输出MEM阶段PC值}begin
    assign MEM_pc = pc;  // 输出当前PC值用于调试
//-----{调试接口：输出MEM阶段PC值}end
endmodule