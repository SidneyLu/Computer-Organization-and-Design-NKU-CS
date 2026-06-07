`timescale 1ns / 1ps
//*************************************************************************
//   > ?????: multi_cycle_cpu.v
//   > ????  :??????CPU????????36?????
//   >        ???rom??????ram???????xilinx IP????????????
//   > ????  : LOONGSON
//   > ????  : 2016-04-14
//*************************************************************************
module multi_cycle_cpu(  // ??????cpu
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
    output [31:0] display_state,
    output reg [31:0] cycle_count,
    output reg        fib_done
    );
//----------------------{??????????????}begin------------------------//
    reg [2:0] state;       // ?????
    reg [2:0] next_state;  // ?????

    //????????????????????????
    assign display_state = {29'd0,state};
    // ??????
    parameter IDLE   = 3'd0;  // ???
    parameter FETCH  = 3'd1;  // ??
    parameter DECODE = 3'd2;  // ????
    parameter EXE    = 3'd3;  // ???
    parameter MEM    = 3'd4;  // ???
    parameter WB     = 3'd5;  // ???

    always @ (posedge clk)        // ?????
    begin
        if (!resetn) begin        // ????????????
            state <= IDLE;       // ?????? ???
        end
        else begin                // ????
            state <= next_state;  // ??????
        end
    end

    wire IF_over;     // IF??????????
    wire ID_over;     // ID??????????
    wire EXE_over;    // EXE??????????
    wire MEM_over;    // MEM??????????
    wire WB_over;     // WB??????????
    wire jbr_not_link;//??????(??link??)?????IF??ID??
    always @ (*)                             // ????? 
    begin
        case (state)
            IDLE : 
            begin
                next_state = FETCH;    // ???->??
            end
            FETCH: 
            begin
                if (IF_over)
                begin
                    next_state = DECODE;   // ??->????
                end
                else
                begin
                    next_state = FETCH;    // ??->????
                end
            end
            DECODE: 
            begin
                if (ID_over)
                begin                      // ????->??????   
                    next_state = jbr_not_link ? FETCH : EXE;
                end
                else
                begin
                    next_state = DECODE;   // ??->????
                end
            end
            EXE: 
            begin
                if (EXE_over)
                begin
                    next_state = MEM;      // ???->???
                end
                else
                begin
                    next_state = EXE;   // ??->????
                end
            end
            MEM:
            begin
                if (MEM_over)
                begin
                    next_state = WB;       // ???->???
                end
                else
                begin
                    next_state = MEM;   // ??->????
                end
            end
            WB:
            begin
                if (WB_over)
                begin
                    next_state = FETCH;    // ???->??
                end
                else
                begin
                    next_state = WB;   // ??->????
                end
            end
            default : next_state = IDLE;
        endcase
    end
    //5????valid???
    wire IF_valid;
    wire ID_valid;
    wire EXE_valid;
    wire MEM_valid;
    wire WB_valid;
    assign  IF_valid = (state == FETCH );  // ???????????IF?????
    assign  ID_valid = (state == DECODE);  // ?????????????ID?????
    assign EXE_valid = (state == EXE   );  // ????????????EXE?????
    assign MEM_valid = (state == MEM   );  // ????????????MEM?????
    assign  WB_valid = (state == WB    );  // ????????????WB?????
//-----------------------{??????????????}end-------------------------//

//--------------------------{5?????????}begin---------------------------//
    wire [ 63:0] IF_ID_bus;   // IF->ID??????
    wire [149:0] ID_EXE_bus;  // ID->EXE??????
    wire [105:0] EXE_MEM_bus; // EXE->MEM??????
    wire [ 69:0] MEM_WB_bus;  // MEM->WB??????
    
    //???????????????
    reg [ 63:0] IF_ID_bus_r;
    reg [149:0] ID_EXE_bus_r;
    reg [105:0] EXE_MEM_bus_r;
    reg [ 69:0] MEM_WB_bus_r;
    
    //IF??ID?????????
    always @(posedge clk)
    begin
        if(IF_over)
        begin
            IF_ID_bus_r <= IF_ID_bus;
        end
    end
    //ID??EXE?????????
    always @(posedge clk)
    begin
        if(ID_over)
        begin
            ID_EXE_bus_r <= ID_EXE_bus;
        end
    end
    //EXE??MEM?????????
    always @(posedge clk)
    begin
        if(EXE_over)
        begin
            EXE_MEM_bus_r <= EXE_MEM_bus;
        end
    end    
    //MEM??WB?????????
    always @(posedge clk)
    begin
        if(MEM_over)
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
//---------------------------{???????????}end---------------------------//

//-------------------------{??????????}begin---------------------------//
    wire next_fetch; //??????????????????????PC?
    //??????decode?????????????????(??link??)????decode??????
    //???????????wb????wb???????????????fetch??
    assign next_fetch = (state==DECODE & ID_over & jbr_not_link)
                      | (state==WB     & WB_over);
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
        
        //??PC??????????
        .IF_pc     (IF_pc     ),
        .IF_inst   (IF_inst   )
    );

    decode ID_module(               // ????
        .ID_valid    (ID_valid    ),  // I, 1
        .IF_ID_bus_r (IF_ID_bus_r ),  // I, 64
        .rs_value    (rs_value    ),  // I, 32
        .rt_value    (rt_value    ),  // I, 32
        .rs          (rs          ),  // O, 5
        .rt          (rt          ),  // O, 5
        .jbr_bus     (jbr_bus     ),  // O, 33
        .jbr_not_link(jbr_not_link),  // O, 1
        .ID_over     (ID_over     ),  // O, 1
        .ID_EXE_bus  (ID_EXE_bus  ),  // O, 150
        
        //??PC
        .ID_pc      (ID_pc      )
    );

    exe EXE_module(                   // ????
        .EXE_valid   (EXE_valid   ),  // I, 1
        .ID_EXE_bus_r(ID_EXE_bus_r),  // I, 150
        .EXE_over    (EXE_over    ),  // O, 1 
        .EXE_MEM_bus (EXE_MEM_bus ),  // O, 106
        
        //??PC
        .EXE_pc      (EXE_pc      )
    );

    mem MEM_module(                     // ???
        .clk          (clk          ),  // I, 1 
        .MEM_valid    (MEM_valid    ),  // I, 1
        .EXE_MEM_bus_r(EXE_MEM_bus_r),  // I, 106
        .dm_rdata     (dm_rdata     ),  // I, 32
        .dm_addr      (dm_addr      ),  // O, 32
        .dm_wen       (dm_wen       ),  // O, 4 
        .dm_wdata     (dm_wdata     ),  // O, 32
        .MEM_over     (MEM_over     ),  // O, 1
        .MEM_WB_bus   (MEM_WB_bus   ),  // O, 70
        
        //??PC
        .MEM_pc       (MEM_pc       )
    );          
 
    wb WB_module(                     // ????
        .WB_valid    (WB_valid    ),  // I, 1
        .MEM_WB_bus_r(MEM_WB_bus_r),  // I, 70
        .rf_wen      (rf_wen      ),  // O, 1
        .rf_wdest    (rf_wdest    ),  // O, 5
        .rf_wdata    (rf_wdata    ),  // O, 32
        .WB_over     (WB_over     ),  // O, 1
        
        //??PC
        .WB_pc       (WB_pc       )
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
        .test_addr(rf_addr),
        .test_data(rf_data)
    );
    
    data_ram data_ram_module(   // ????????
        .clka   (clk         ),  // I, 1,  ???
        .wea    (dm_wen      ),  // I, 1,  ????
        .addra  (dm_addr[9:2]),  // I, 8,  ?????
        .dina   (dm_wdata    ),  // I, 32, ?????
        .douta  (dm_rdata    ),  // O, 32, ??????

        //display mem
        .clkb   (clk          ),
        .web    (4'd0         ),
        .addrb  (mem_addr[9:2]),
        .doutb  (mem_data     ),
        .dinb   (32'd0        )
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

