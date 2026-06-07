`timescale 1ns / 1ps
//*************************************************************************
//   > ?????: pipeline_cpu.v
//   > ????  :?????CPU????????XX?????
//   >        ???rom??????ram???????xilinx IP????????????
//   > ????  : LOONGSON
//   > ????  : 2016-04-14
//*************************************************************************
module pipeline_cpu(  // ??????cpu
    input clk,           // ???
    input resetn,        // ??????????????
    
    //display data
    input  [ 4:0] rf_addr,
    input  [31:0] mem_addr,
    output [31:0] rf_data,
    output [31:0] mem_data,
    output [31:0] IF_pc,
    output [31:0] IF_inst,
    output [31:0] ID_pc,
    output [31:0] EXE_pc,
    output [31:0] MEM_pc,
    output [31:0] WB_pc,
    
    //5?????????
    output [31:0] cpu_5_valid,
    output [31:0] HI_data,
    output [31:0] LO_data,
    output reg [31:0] cycle_count,
    output reg        fib_done
    );
//------------------------{5????????????}begin-------------------------//
    //5????valid???
    reg IF_valid;
    reg ID_valid;
    reg EXE_valid;
    reg MEM_valid;
    reg WB_valid;
    //5????????????,????????????
    wire IF_over;
    wire ID_over;
    wire EXE_over;
    wire MEM_over;
    wire WB_over;
    //5??????????????????
    wire IF_allow_in;
    wire ID_allow_in;
    wire EXE_allow_in;
    wire MEM_allow_in;
    wire WB_allow_in;
    
    // syscall??eret?????????????cancel????
    wire cancel;    // ???????????????????????????????
    
    //??????????????:???????????????????????????????
    assign IF_allow_in  = (IF_over & ID_allow_in) | cancel;
    assign ID_allow_in  = ~ID_valid  | (ID_over  & EXE_allow_in);
    assign EXE_allow_in = ~EXE_valid | (EXE_over & MEM_allow_in);
    assign MEM_allow_in = ~MEM_valid | (MEM_over & WB_allow_in );
    assign WB_allow_in  = ~WB_valid  | WB_over;
   
    //IF_valid?????????????
   always @(posedge clk)
    begin
        if (!resetn)
        begin
            IF_valid <= 1'b0;
        end
        else
        begin
            IF_valid <= 1'b1;
        end
    end
    
    //ID_valid
    always @(posedge clk)
    begin
        if (!resetn || cancel)
        begin
            ID_valid <= 1'b0;
        end
        else if (ID_allow_in)
        begin
            ID_valid <= IF_over;
        end
    end
    
    //EXE_valid
    always @(posedge clk)
    begin
        if (!resetn || cancel)
        begin
            EXE_valid <= 1'b0;
        end
        else if (EXE_allow_in)
        begin
            EXE_valid <= ID_over;
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


