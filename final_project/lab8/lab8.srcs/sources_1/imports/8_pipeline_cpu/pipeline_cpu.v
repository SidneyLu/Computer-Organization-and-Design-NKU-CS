`timescale 1ns / 1ps
//*************************************************************************
//   > 文件名: pipeline_cpu.v
//   > 功能  : 五级流水线CPU顶层模块
//   >        包含取指(IF)、译码(ID)、执行(EXE)、访存(MEM)、写回(WB)五个阶段
//   >        指令rom和数据ram使用xilinx IP核实现
//   > 作者  : LOONGSON
//   > 日期  : 2016-04-14
//*************************************************************************
module pipeline_cpu(  // 五级流水线CPU顶层模块
    input clk,           // 系统时钟信号
    input resetn,        // 异步复位信号，低电平有效
    
    //显示数据接口 - 用于仿真调试和观察CPU内部状态
    input  [ 4:0] rf_addr,      // 寄存器堆测试读地址
    input  [31:0] mem_addr,     // 数据存储器测试读地址
    output [31:0] rf_data,      // 寄存器堆测试读数据
    output [31:0] mem_data,     // 数据存储器测试读数据
    output [31:0] IF_pc,        // IF阶段当前PC值
    output [31:0] IF_inst,      // IF阶段当前指令
    output [31:0] ID_pc,        // ID阶段当前PC值
    output [31:0] EXE_pc,       // EXE阶段当前PC值
    output [31:0] MEM_pc,       // MEM阶段当前PC值
    output [31:0] WB_pc,        // WB阶段当前PC值
    
    //5级流水线状态输出
    output [31:0] cpu_5_valid,  // 5个阶段的valid信号状态，用于调试
    output [31:0] HI_data,      // HI寄存器数据输出(乘法结果高32位)
    output [31:0] LO_data,      // LO寄存器数据输出(乘法结果低32位)
    output reg [31:0] cycle_count, // 周期计数器，用于性能统计
    output reg        fib_done    // Fibonacci程序完成标志
    );
//------------------------{5级流水线握手控制机制}begin-------------------------//
    //5级流水线各阶段的valid信号，表示该阶段是否有有效指令
    reg IF_valid;   // IF阶段有效标志
    reg ID_valid;   // ID阶段有效标志
    reg EXE_valid;  // EXE阶段有效标志
    reg MEM_valid;  // MEM阶段有效标志
    reg WB_valid;   // WB阶段有效标志
    
    //5级流水线各阶段的完成信号，表示该阶段指令已完成处理
    wire IF_over;   // IF阶段完成信号
    wire ID_over;   // ID阶段完成信号
    wire EXE_over;  // EXE阶段完成信号
    wire MEM_over;  // MEM阶段完成信号
    wire WB_over;   // WB阶段完成信号
    
    //5级流水线各阶段的允许进入信号，用于流水线暂停控制
    wire IF_allow_in;   // IF阶段允许新指令进入
    wire ID_allow_in;   // ID阶段允许新指令进入
    wire EXE_allow_in;  // EXE阶段允许新指令进入
    wire MEM_allow_in;  // MEM阶段允许新指令进入
    wire WB_allow_in;   // WB阶段允许新指令进入
    
    // syscall和eret指令产生的取消信号，用于清空流水线
    wire cancel;    // 流水线取消信号，发生异常时清空所有阶段
    
    //流水线握手控制逻辑：采用握手协议实现流水线暂停和气泡插入
    //核心思想：后级阻塞时前级也阻塞，形成流水线暂停链
    assign IF_allow_in  = (IF_over & ID_allow_in) | cancel;  // IF允许进入：ID允许且IF完成，或发生取消
    assign ID_allow_in  = ~ID_valid  | (ID_over  & EXE_allow_in);  // ID允许：ID空或ID完成且EXE允许
    assign EXE_allow_in = ~EXE_valid | (EXE_over & MEM_allow_in);  // EXE允许：EXE空或EXE完成且MEM允许
    assign MEM_allow_in = ~MEM_valid | (MEM_over & WB_allow_in );  // MEM允许：MEM空或MEM完成且WB允许
    assign WB_allow_in  = ~WB_valid  | WB_over;  // WB允许：WB空或WB完成
   
    //IF_valid控制：复位后立即有效，持续取指
    always @(posedge clk)
    begin
        if (!resetn)
        begin
            IF_valid <= 1'b0;  // 复位时IF阶段无效
        end
        else
        begin
            IF_valid <= 1'b1;  // 正常运行时IF阶段始终有效
        end
    end
    
    //ID_valid控制：根据IF完成信号和允许进入信号更新
    always @(posedge clk)
    begin
        if (!resetn || cancel)
        begin
            ID_valid <= 1'b0;  // 复位或取消时ID阶段无效
        end
        else if (ID_allow_in)
        begin
            ID_valid <= IF_over;  // ID允许进入时，根据IF完成信号更新
        end
    end
    
    //EXE_valid控制：根据ID完成信号和允许进入信号更新
    always @(posedge clk)
    begin
        if (!resetn || cancel)
        begin
            EXE_valid <= 1'b0;  // 复位或取消时EXE阶段无效
        end
        else if (EXE_allow_in)
        begin
            EXE_valid <= ID_over;  // EXE允许进入时，根据ID完成信号更新
        end
    end
    
    //MEM_valid
    always @(posedge clk)
    begin
        if (!resetn || cancel)
        begin
            MEM_valid <= 1'b0;
        end
        else if (MEM_allow_in)
        begin
            MEM_valid <= EXE_over;
        end
    end
    
    //WB_valid
    always @(posedge clk)
    begin
        if (!resetn || cancel)
        begin
            WB_valid <= 1'b0;
        end
        else if (WB_allow_in)
        begin
            WB_valid <= MEM_over;
        end
    end
    
    //??5????valid???
    assign cpu_5_valid = {12'd0         ,{4{IF_valid }},{4{ID_valid}},
                          {4{EXE_valid}},{4{MEM_valid}},{4{WB_valid}}};
//-------------------------{5????????????}end--------------------------//

//--------------------------{5?????????}begin---------------------------//
    wire [ 63:0] IF_ID_bus;   // IF->ID??????
    wire [212:0] ID_EXE_bus;  // ID->EXE??????
    wire [153:0] EXE_MEM_bus; // EXE->MEM??????
    wire [117:0] MEM_WB_bus;  // MEM->WB??????
    
    //???????????????
    // These 4 buses are the architectural pipeline registers.
    reg [ 63:0] IF_ID_bus_r;
    reg [212:0] ID_EXE_bus_r;
    reg [153:0] EXE_MEM_bus_r;
    reg [117:0] MEM_WB_bus_r;
    
    //IF??ID?????????
    always @(posedge clk)
    begin
        if(IF_over && ID_allow_in)
        begin
            IF_ID_bus_r <= IF_ID_bus;
        end
    end
    //ID??EXE?????????
    always @(posedge clk)
    begin
        if(ID_over && EXE_allow_in)
        begin
            ID_EXE_bus_r <= ID_EXE_bus;
        end
    end
    //EXE??MEM?????????
    always @(posedge clk)
    begin
        if(EXE_over && MEM_allow_in)
        begin
            EXE_MEM_bus_r <= EXE_MEM_bus;
        end
    end    
    //MEM??WB?????????
    always @(posedge clk)
    begin
        if(MEM_over && WB_allow_in)
        begin
            MEM_WB_bus_r <= MEM_WB_bus;
        end
    end
//---------------------------{5?????????}end----------------------------//

//--------------------------{???????????}begin--------------------------//
    //???????
    wire [ 32:0] jbr_bus;    

    //IF??inst_rom????
    wire [31:0] inst_addr;
    wire [31:0] inst;

    //ID??EXE??MEM??WB????
    wire [ 4:0] EXE_wdest;
    wire [ 4:0] MEM_wdest;
    wire [ 4:0] WB_wdest;
    wire        EXE_slow_result;
    wire        MEM_slow_result;
    wire        MEM_fwd_wen;
    wire [ 4:0] MEM_fwd_wdest;
    wire [31:0] MEM_fwd_data;
    
    //MEM??data_ram????    
    wire [ 3:0] dm_wen;
    wire [31:0] dm_addr;
    wire [31:0] dm_wdata;
    wire [31:0] dm_rdata;

    //ID??regfile????
    wire [ 4:0] rs;
    wire [ 4:0] rt;   
    wire [31:0] rs_value;
    wire [31:0] rt_value;
    
    //WB??regfile????
    wire        rf_wen;
    wire [ 4:0] rf_wdest;
    wire [31:0] rf_wdata;    
    
    //WB??IF?????????
    wire [32:0] exc_bus;
//---------------------------{???????????}end---------------------------//

//------------------------{hazard/forward metadata}begin------------------//
    wire        EXE_meta_multiply;
    wire        EXE_meta_mthi;
    wire        EXE_meta_mtlo;
    wire [11:0] EXE_meta_alu_control;
    wire [31:0] EXE_meta_rs_value;
    wire [31:0] EXE_meta_rt_value;
    wire [31:0] EXE_meta_imm_ext;
    wire [31:0] EXE_meta_sa_ext;
    wire [ 1:0] EXE_meta_op1_sel;
    wire [ 1:0] EXE_meta_op2_sel;
    wire [ 4:0] EXE_meta_rs;
    wire [ 4:0] EXE_meta_rt;
    wire [ 3:0] EXE_meta_mem_control;
    wire        EXE_meta_mfhi;
    wire        EXE_meta_mflo;
    wire        EXE_meta_mtc0;
    wire        EXE_meta_mfc0;
    wire [ 7:0] EXE_meta_cp0r_addr;
    wire        EXE_meta_syscall;
    wire        EXE_meta_eret;
    wire        EXE_meta_rf_wen;
    wire [ 4:0] EXE_meta_rf_wdest;
    wire [31:0] EXE_meta_pc;

    assign {EXE_meta_multiply,
            EXE_meta_mthi,
            EXE_meta_mtlo,
            EXE_meta_alu_control,
            EXE_meta_rs_value,
            EXE_meta_rt_value,
            EXE_meta_imm_ext,
            EXE_meta_sa_ext,
            EXE_meta_op1_sel,
            EXE_meta_op2_sel,
            EXE_meta_rs,
            EXE_meta_rt,
            EXE_meta_mem_control,
            EXE_meta_mfhi,
            EXE_meta_mflo,
            EXE_meta_mtc0,
            EXE_meta_mfc0,
            EXE_meta_cp0r_addr,
            EXE_meta_syscall,
            EXE_meta_eret,
            EXE_meta_rf_wen,
            EXE_meta_rf_wdest,
            EXE_meta_pc} = ID_EXE_bus_r;

    assign EXE_slow_result = EXE_valid & EXE_meta_rf_wen
                           & (EXE_meta_mem_control[3] | EXE_meta_mfhi
                           |  EXE_meta_mflo | EXE_meta_mfc0);

    wire [ 3:0] MEM_meta_mem_control;
    wire [31:0] MEM_meta_store_data;
    wire [31:0] MEM_meta_exe_result;
    wire [31:0] MEM_meta_lo_result;
    wire        MEM_meta_hi_write;
    wire        MEM_meta_lo_write;
    wire        MEM_meta_mfhi;
    wire        MEM_meta_mflo;
    wire        MEM_meta_mtc0;
    wire        MEM_meta_mfc0;
    wire [ 7:0] MEM_meta_cp0r_addr;
    wire        MEM_meta_syscall;
    wire        MEM_meta_eret;
    wire        MEM_meta_rf_wen;
    wire [ 4:0] MEM_meta_rf_wdest;
    wire [31:0] MEM_meta_pc;

    assign {MEM_meta_mem_control,
            MEM_meta_store_data,
            MEM_meta_exe_result,
            MEM_meta_lo_result,
            MEM_meta_hi_write,
            MEM_meta_lo_write,
            MEM_meta_mfhi,
            MEM_meta_mflo,
            MEM_meta_mtc0,
            MEM_meta_mfc0,
            MEM_meta_cp0r_addr,
            MEM_meta_syscall,
            MEM_meta_eret,
            MEM_meta_rf_wen,
            MEM_meta_rf_wdest,
            MEM_meta_pc} = EXE_MEM_bus_r;

    assign MEM_slow_result = MEM_valid & MEM_meta_rf_wen
                           & (MEM_meta_mem_control[3] | MEM_meta_mfhi
                           |  MEM_meta_mflo | MEM_meta_mfc0);
    assign MEM_fwd_wen     = MEM_valid & MEM_meta_rf_wen
                           & ~(MEM_meta_mem_control[3] | MEM_meta_mfhi
                           |   MEM_meta_mflo | MEM_meta_mfc0);
    assign MEM_fwd_wdest   = MEM_meta_rf_wdest;
    assign MEM_fwd_data    = MEM_meta_exe_result;
//-------------------------{hazard/forward metadata}end-------------------//

//-------------------------{??????????}begin---------------------------//
    wire next_fetch; //??????????????????????PC?
    //IF????????????????PC????????????
    assign next_fetch = IF_allow_in;
    fetch IF_module(             // ????
        .clk       (clk       ),  // I, 1
        .resetn    (resetn    ),  // I, 1
        .IF_valid  (IF_valid  ),  // I, 1
        .next_fetch(next_fetch),  // I, 1
        .inst      (inst      ),  // I, 32
        .jbr_bus   (jbr_bus   ),  // I, 33
        .inst_addr (inst_addr ),  // O, 32
        .IF_over   (IF_over   ),  // O, 1
        .IF_ID_bus (IF_ID_bus ),  // O, 64
        
        //5????????????
        .exc_bus   (exc_bus   ),  // I, 32
        
        //??PC??????????
        .IF_pc     (IF_pc     ),  // O, 32
        .IF_inst   (IF_inst   )   // O, 32
    );

    decode ID_module(               // ????
        .ID_valid   (ID_valid   ),  // I, 1
        .IF_ID_bus_r(IF_ID_bus_r),  // I, 64
        .rs_value   (rs_value   ),  // I, 32
        .rt_value   (rt_value   ),  // I, 32
        .rs         (rs         ),  // O, 5
        .rt         (rt         ),  // O, 5
        .jbr_bus    (jbr_bus    ),  // O, 33
//        .inst_jbr   (inst_jbr   ),  // O, 1
        .ID_over    (ID_over    ),  // O, 1
        .ID_EXE_bus (ID_EXE_bus ),  // O, 213
        
        //5?????????
        .IF_over     (IF_over     ),// I, 1
        .EXE_wdest   (EXE_wdest   ),// I, 5
        .EXE_slow_result(EXE_slow_result),// I, 1
        .MEM_wdest   (MEM_wdest   ),// I, 5
        .MEM_slow_result(MEM_slow_result),// I, 1
        .MEM_fwd_wen (MEM_fwd_wen ),// I, 1
        .MEM_fwd_wdest(MEM_fwd_wdest),// I, 5
        .MEM_fwd_data(MEM_fwd_data),// I, 32
        .WB_fwd_wen  (rf_wen      ),// I, 1
        .WB_fwd_wdest(rf_wdest    ),// I, 5
        .WB_fwd_data (rf_wdata    ),// I, 32
        .WB_wdest    (WB_wdest    ),// I, 5
        
        //??PC
        .ID_pc       (ID_pc       ) // O, 32
    ); 

    exe EXE_module(                   // ????
        .EXE_valid   (EXE_valid   ),  // I, 1
        .ID_EXE_bus_r(ID_EXE_bus_r),  // I, 213
        .EXE_over    (EXE_over    ),  // O, 1 
        .EXE_MEM_bus (EXE_MEM_bus ),  // O, 154
        
        //5?????????
        .clk         (clk         ),  // I, 1
        .MEM_fwd_wen (MEM_fwd_wen ),  // I, 1
        .MEM_fwd_wdest(MEM_fwd_wdest),// I, 5
        .MEM_fwd_data(MEM_fwd_data),  // I, 32
        .WB_fwd_wen  (rf_wen      ),  // I, 1
        .WB_fwd_wdest(rf_wdest    ),  // I, 5
        .WB_fwd_data (rf_wdata    ),  // I, 32
        .EXE_wdest   (EXE_wdest   ),  // O, 5
        
        //??PC
        .EXE_pc      (EXE_pc      )   // O, 32
    );

    mem MEM_module(                     // ???
        .clk          (clk          ),  // I, 1 
        .MEM_valid    (MEM_valid    ),  // I, 1
        .EXE_MEM_bus_r(EXE_MEM_bus_r),  // I, 154
        .dm_rdata     (dm_rdata     ),  // I, 32
        .dm_addr      (dm_addr      ),  // O, 32
        .dm_wen       (dm_wen       ),  // O, 4 
        .dm_wdata     (dm_wdata     ),  // O, 32
        .MEM_over     (MEM_over     ),  // O, 1
        .MEM_WB_bus   (MEM_WB_bus   ),  // O, 118
        
        //5????????????
        .MEM_allow_in (MEM_allow_in ),  // I, 1
        .MEM_wdest    (MEM_wdest    ),  // O, 5
        
        //??PC
        .MEM_pc       (MEM_pc       )   // O, 32
    );          
 
    wb WB_module(                     // ????
        .WB_valid    (WB_valid    ),  // I, 1
        .MEM_WB_bus_r(MEM_WB_bus_r),  // I, 118
        .rf_wen      (rf_wen      ),  // O, 1
        .rf_wdest    (rf_wdest    ),  // O, 5
        .rf_wdata    (rf_wdata    ),  // O, 32
          .WB_over     (WB_over     ),  // O, 1
        
        //5????????????
        .clk         (clk         ),  // I, 1
      .resetn      (resetn      ),  // I, 1
        .exc_bus     (exc_bus     ),  // O, 32
        .WB_wdest    (WB_wdest    ),  // O, 5
        .cancel      (cancel      ),  // O, 1
        
        //??PC??HI/LO?
        .WB_pc       (WB_pc       ),  // O, 32
        .HI_data     (HI_data     ),  // O, 32
        .LO_data     (LO_data     )   // O, 32
    );

    inst_rom inst_rom_module(         // ??????
        .clka       (clk           ),  // I, 1 ,???
        .addra      (inst_addr[9:2]),  // I, 8 ,?????
        .douta      (inst          )   // O, 32,???
    );

    regfile rf_module(        // ??????????
        .clk    (clk      ),  // I, 1
        .wen    (rf_wen   ),  // I, 1
        .raddr1 (rs       ),  // I, 5
        .raddr2 (rt       ),  // I, 5
        .waddr  (rf_wdest ),  // I, 5
        .wdata  (rf_wdata ),  // I, 32
        .rdata1 (rs_value ),  // O, 32
        .rdata2 (rt_value ),  // O, 32

        //display rf
        .test_addr(rf_addr),  // I, 5
        .test_data(rf_data)   // O, 32
    );
    
    data_ram data_ram_module(   // ????????
        .clka   (clk         ),  // I, 1,  ???
        .wea    (dm_wen      ),  // I, 1,  ????
        .addra  (dm_addr[9:2]),  // I, 8,  ?????
        .dina   (dm_wdata    ),  // I, 32, ?????
        .douta  (dm_rdata    ),  // O, 32, ??????

        //display mem
        .clkb   (clk          ),  // I, 1,  ???
        .web    (4'd0         ),  // ???????2???????
        .addrb  (mem_addr[9:2]),  // I, 8,  ?????
        .doutb  (mem_data     ),  // I, 32, ?????
        .dinb   (32'd0        )   // ???????2???????
    );

    wire fib_commit;
    assign fib_commit = (dm_wen == 4'b1111)
                     && (dm_addr  == 32'h00000004)
                     && (dm_wdata == 32'h00000037);

    always @(posedge clk)
    begin
        if (!resetn)
        begin
            cycle_count <= 32'd0;
            fib_done    <= 1'b0;
        end
        else if (!fib_done)
        begin
            cycle_count <= cycle_count + 32'd1;
            if (fib_commit)
            begin
                fib_done <= 1'b1;
            end
        end
    end
//--------------------------{??????????}end----------------------------//
endmodule