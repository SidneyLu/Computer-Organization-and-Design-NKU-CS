`timescale 1ns / 1ps
//*************************************************************************
//   > ?????: pipeline_cpu_display.v
//   > ????  :?????CPU??????????FPGA?????IO?????????
//   > ????  : LOONGSON
//   > ????  : 2016-04-14
//*************************************************************************
module pipeline_cpu_display(  // ??????cpu
    //?????????
    input clk,
    input resetn,    //???"n"??????????

    //??????????????????clk???????????
    input btn_clk,

    //?????????????????????
    output lcd_rst,
    output lcd_cs,
    output lcd_rs,
    output lcd_wr,
    output lcd_rd,
    inout[15:0] lcd_data_io,
    output lcd_bl_ctr,
    inout ct_int,
    inout ct_sda,
    output ct_scl,
    output ct_rstn
    );
//-----{?????????}begin
//?????????????????????
    wire cpu_clk;    //??????CPU?????????????????????????????
	 reg btn_clk_r1;
	 reg btn_clk_r2;
    always @(posedge clk)
    begin
        if (!resetn)
        begin
            btn_clk_r1<= 1'b0;
        end
        else
        begin
            btn_clk_r1 <= ~btn_clk;
        end

        btn_clk_r2 <= btn_clk_r1;
    end
	 
	 wire clk_en;
    assign clk_en = !resetn || (!btn_clk_r1 && btn_clk_r2);
    BUFGCE cpu_clk_cg(.I(clk),.CE(clk_en),.O(cpu_clk));
//-----{?????????}end

//-----{?????????CPU???}begin
    //??????FPGA??????????
    wire [ 4:0] rf_addr;   //????????????
    wire [31:0] rf_data;   //??????????????????????
    reg  [31:0] mem_addr;  //??????????
    wire [31:0] mem_data;  //??????????????
    wire [31:0] IF_pc;     //IF????PC
    wire [31:0] IF_inst;   //IF???????????
    wire [31:0] ID_pc;     //ID????PC
    wire [31:0] EXE_pc;    //EXE????PC
    wire [31:0] MEM_pc;    //MEM????PC
    wire [31:0] WB_pc;     //WB????PC
    wire [31:0] cpu_5_valid; //??CPU5????valid???
    wire [31:0] HI_data;   //??HI????????
    wire [31:0] LO_data;   //??LO????????
    wire [31:0] cycle_count;
    wire        fib_done;
    pipeline_cpu cpu(
        .clk     (cpu_clk ),
        .resetn  (resetn  ),

        .rf_addr (rf_addr ),
        .mem_addr(mem_addr),
        .rf_data (rf_data ),
        .mem_data(mem_data),
        .IF_pc   (IF_pc   ),
        .IF_inst (IF_inst ),
        .ID_pc   (ID_pc   ),
        .EXE_pc  (EXE_pc  ),
        .MEM_pc  (MEM_pc  ),
        .WB_pc   (WB_pc   ),
        .cpu_5_valid (cpu_5_valid),
          .HI_data (HI_data ),
          .LO_data (LO_data ),
        .cycle_count(cycle_count),
        .fib_done   (fib_done   )
    );
//-----{?????????CPU???}end

//---------------------{????????????}begin--------------------//
//-----{???????????}begin
//?????????????
    reg         display_valid;
    reg  [39:0] display_name;
    reg  [31:0] display_value;
    wire [5 :0] display_number;
    wire        input_valid;
    wire [31:0] input_value;

    lcd_module lcd_module(
        .clk            (clk           ),   //10Mhz
        .resetn         (resetn        ),

        //?????????????
        .display_valid  (display_valid ),
        .display_name   (display_name  ),
        .display_value  (display_value ),
        .display_number (display_number),
        .input_valid    (input_valid   ),
        .input_value    (input_value   ),

        //lcd?????????????????????
        .lcd_rst        (lcd_rst       ),
        .lcd_cs         (lcd_cs        ),
        .lcd_rs         (lcd_rs        ),
        .lcd_wr         (lcd_wr        ),
        .lcd_rd         (lcd_rd        ),
        .lcd_data_io    (lcd_data_io   ),
        .lcd_bl_ctr     (lcd_bl_ctr    ),
        .ct_int         (ct_int        ),
        .ct_sda         (ct_sda        ),
        .ct_scl         (ct_scl        ),
        .ct_rstn        (ct_rstn       )
    ); 
//-----{???????????}end

//-----{??????????????}begin
//?????????????????????????
//???????????????????????????always??
    always @(posedge clk)
    begin
        if (!resetn)
        begin
            mem_addr <= 32'd0;
        end
        else if (input_valid)
        begin
            mem_addr <= input_value;
        end
    end
    assign rf_addr = display_number-6'd13;
//-----{??????????????}end

//-----{??????????????}begin
//??????????????????????
//???????????44??????????????44??32?????
//44??????????1???????????1~44??
    always @(posedge clk)
    begin
        if (display_number >6'd12 && display_number <6'd45 )
        begin  //???5~36???32????????????
            display_valid <= 1'b1;
            display_name[39:16] <= "REG";
            display_name[15: 8] <= {4'b0011,3'b000,rf_addr[4]};
            display_name[7 : 0] <= {4'b0011,rf_addr[3:0]}; 
            display_value       <= rf_data;
          end
        else
        begin
            case(display_number)
                6'd1 : //???IF????PC
                begin
                    display_valid <= 1'b1;
                    display_name  <= "IF_PC";
                    display_value <= IF_pc;
                end
                6'd2 : //???IF???????
                begin
                    display_valid <= 1'b1;
                    display_name  <= "IF_IN";
                    display_value <= IF_inst;
                end
                6'd3 : //???ID????PC
                begin
                    display_valid <= 1'b1;
                    display_name  <= "ID_PC";
                    display_value <= ID_pc;
                end
                6'd4 : //???EXE????PC
                begin
                    display_valid <= 1'b1;
                    display_name  <= "EXEPC";
                    display_value <= EXE_pc;
                end
                6'd5 : //???MEM????PC
                begin
                    display_valid <= 1'b1;
                    display_name  <= "MEMPC";
                    display_value <= MEM_pc;
                end
                6'd6 : //???WB????PC
                begin
                    display_valid <= 1'b1;
                    display_name  <= "WB_PC";
                    display_value <= WB_pc;
                end
                6'd7 : //?????????????
                begin
                    display_valid <= 1'b1;
                    display_name  <= "MADDR";
                    display_value <= mem_addr;
                end
                6'd8 : //???????????????????
                begin
                    display_valid <= 1'b1;
                    display_name  <= "MDATA";
                    display_value <= mem_data;
                end
                6'd9 : //???CPU?????
                begin
                    display_valid <= 1'b1;
                    display_name  <= "VALID";
                    display_value <= cpu_5_valid;
                end
                6'd10:
                begin
                    display_valid <= 1'b1;
                    display_name  <= "CYCLE";
                    display_value <= cycle_count;
                end
                6'd11: //???HI????????
                begin
                    display_valid <= 1'b1;
                    display_name  <= "   HI";
                    display_value <= HI_data;
                end
                6'd12: //???LO????????
                begin
                    display_valid <= 1'b1;
                    display_name  <= "   LO";
                    display_value <= LO_data;
                end
                default :
                begin
                    display_valid <= 1'b0;
                    display_name  <= 40'd0;
                    display_value <= 32'd0;
                end
            endcase
        end
    end
//-----{??????????????}end
//----------------------{????????????}end---------------------//
endmodule

