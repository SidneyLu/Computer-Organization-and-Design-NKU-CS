`timescale 1ns / 1ps
//*****************************************************************************
//   > File: exe.v
//   > Desc: 5-stage pipeline CPU execute stage with forwarding
//*****************************************************************************
module exe(
    input              EXE_valid,
    input      [212:0] ID_EXE_bus_r,
    output             EXE_over,
    output     [153:0] EXE_MEM_bus,

    input              clk,
    input              MEM_fwd_wen,
    input      [  4:0] MEM_fwd_wdest,
    input      [ 31:0] MEM_fwd_data,
    input              WB_fwd_wen,
    input      [  4:0] WB_fwd_wdest,
    input      [ 31:0] WB_fwd_data,
    output     [  4:0] EXE_wdest,

    output     [ 31:0] EXE_pc
);
//-----{ID->EXE bus}begin
    wire        multiply;
    wire        mthi;
    wire        mtlo;
    wire [11:0] alu_control;
    wire [31:0] rs_raw_value;
    wire [31:0] rt_raw_value;
    wire [31:0] imm_ext;
    wire [31:0] sa_ext;
    wire [1:0]  op1_sel;
    wire [1:0]  op2_sel;
    wire [4:0]  rs;
    wire [4:0]  rt;
    wire [3:0]  mem_control;
    wire        mfhi;
    wire        mflo;
    wire        mtc0;
    wire        mfc0;
    wire [7:0]  cp0r_addr;
    wire        syscall;
    wire        eret;
    wire        rf_wen;
    wire [4:0]  rf_wdest;
    wire [31:0] pc;

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
            pc} = ID_EXE_bus_r;
//-----{ID->EXE bus}end

//-----{forwarding}begin
    wire rs_from_mem;
    wire rs_from_wb;
    wire rt_from_mem;
    wire rt_from_wb;
    wire [31:0] rs_value;
    wire [31:0] rt_value;

    assign rs_from_mem = MEM_fwd_wen & (rs != 5'd0) & (rs == MEM_fwd_wdest);
    assign rs_from_wb  = WB_fwd_wen  & (rs != 5'd0) & (rs == WB_fwd_wdest);
    assign rt_from_mem = MEM_fwd_wen & (rt != 5'd0) & (rt == MEM_fwd_wdest);
    assign rt_from_wb  = WB_fwd_wen  & (rt != 5'd0) & (rt == WB_fwd_wdest);

    assign rs_value = rs_from_mem ? MEM_fwd_data :
                      rs_from_wb  ? WB_fwd_data  : rs_raw_value;
    assign rt_value = rt_from_mem ? MEM_fwd_data :
                      rt_from_wb  ? WB_fwd_data  : rt_raw_value;
//-----{forwarding}end

//-----{ALU operands}begin
    wire [31:0] alu_operand1;
    wire [31:0] alu_operand2;
    wire [31:0] store_data;

    assign alu_operand1 = (op1_sel == 2'd2) ? pc     :
                          (op1_sel == 2'd1) ? sa_ext  : rs_value;
    assign alu_operand2 = (op2_sel == 2'd2) ? 32'd8  :
                          (op2_sel == 2'd1) ? imm_ext : rt_value;
    assign store_data   = rt_value;
//-----{ALU operands}end

//-----{ALU}begin
    wire [31:0] alu_result;

    alu alu_module(
        .alu_control(alu_control),
        .alu_src1   (alu_operand1),
        .alu_src2   (alu_operand2),
        .alu_result (alu_result)
    );
//-----{ALU}end

//-----{multiply}begin
    wire        mult_begin;
    wire [63:0] product;
    wire        mult_end;

    assign mult_begin = multiply & EXE_valid;
    multiply multiply_module(
        .clk       (clk),
        .mult_begin(mult_begin),
        .mult_op1  (alu_operand1),
        .mult_op2  (alu_operand2),
        .product   (product),
        .mult_end  (mult_end)
    );
//-----{multiply}end

//-----{EXE done}begin
    assign EXE_over = EXE_valid & (~multiply | mult_end);
//-----{EXE done}end

//-----{EXE dest}begin
    assign EXE_wdest = rf_wdest & {5{EXE_valid}};
//-----{EXE dest}end

//-----{EXE->MEM bus}begin
    wire [31:0] exe_result;
    wire [31:0] lo_result;
    wire        hi_write;
    wire        lo_write;

    assign exe_result = mthi     ? alu_operand1 :
                        mtc0     ? alu_operand2 :
                        multiply ? product[63:32] : alu_result;
    assign lo_result  = mtlo ? alu_operand1 : product[31:0];
    assign hi_write   = multiply | mthi;
    assign lo_write   = multiply | mtlo;

    assign EXE_MEM_bus = {mem_control,
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
                          pc};
//-----{EXE->MEM bus}end

    assign EXE_pc = pc;
endmodule

