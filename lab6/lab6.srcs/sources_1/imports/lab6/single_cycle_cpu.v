`timescale 1ns / 1ps
`define STARTADDR 32'd0
module single_cycle_cpu(
    input clk,
    input resetn,
    input  [ 4:0] rf_addr,
    input  [31:0] mem_addr,
    output [31:0] rf_data,
    output [31:0] mem_data,
    output [31:0] cpu_pc,
    output [31:0] cpu_inst
    );

    reg  [31:0] pc;
    wire [31:0] next_pc;
    wire [31:0] seq_pc;
    wire [31:0] jbr_target;
    wire jbr_taken;

    wire rf_wen;
    wire [4:0] rf_waddr;
    wire [31:0] rf_wdata;
    wire [31:0] rs_value, rt_value;

    assign seq_pc[31:2] = pc[31:2] + 1'b1;
    assign seq_pc[1:0]  = pc[1:0];
    assign next_pc = jbr_taken ? jbr_target : seq_pc;

    always @ (posedge clk) begin
        if (!resetn) pc <= `STARTADDR;
        else pc <= next_pc;
    end

    wire [31:0] inst_addr;
    wire [31:0] inst;
    assign inst_addr = pc;
    inst_rom inst_rom_module(
        .addr (inst_addr[7:2]),
        .inst (inst)
    );
    assign cpu_pc = pc;
    assign cpu_inst = inst;

    wire [5:0] op;
    wire [4:0] rs;
    wire [4:0] rt;
    wire [4:0] rd;
    wire [4:0] sa;
    wire [5:0] funct;
    wire [15:0] imm;
    wire [15:0] offset;
    wire [25:0] target;

    assign op     = inst[31:26];
    assign rs     = inst[25:21];
    assign rt     = inst[20:16];
    assign rd     = inst[15:11];
    assign sa     = inst[10:6];
    assign funct  = inst[5:0];
    assign imm    = inst[15:0];
    assign offset = inst[15:0];
    assign target = inst[25:0];

    wire op_zero;
    wire sa_zero;
    assign op_zero = ~(|op);
    assign sa_zero = ~(|sa);

    wire inst_ADDU, inst_SUBU, inst_SUB, inst_SLT, inst_AND;
    wire inst_NOR, inst_OR, inst_XOR, inst_SLL;
    wire inst_SRL, inst_ADDIU, inst_BEQ, inst_BNE, inst_BGTZ;
    wire inst_LW, inst_SW, inst_LUI, inst_J;

    assign inst_ADDU  = op_zero & sa_zero    & (funct == 6'b100001);
    assign inst_SUBU  = op_zero & sa_zero    & (funct == 6'b100011);
    assign inst_SUB   = op_zero & sa_zero    & (funct == 6'b100010);
    assign inst_SLT   = op_zero & sa_zero    & (funct == 6'b101010);
    assign inst_AND   = op_zero & sa_zero    & (funct == 6'b100100);
    assign inst_NOR   = op_zero & sa_zero    & (funct == 6'b100111);
    assign inst_OR    = op_zero & sa_zero    & (funct == 6'b100101);
    assign inst_XOR   = op_zero & sa_zero    & (funct == 6'b100110);
    assign inst_SLL   = op_zero & (rs==5'd0) & (funct == 6'b000000);
    assign inst_SRL   = op_zero & (rs==5'd0) & (funct == 6'b000010);
    assign inst_ADDIU = (op == 6'b001001);
    assign inst_BEQ   = (op == 6'b000100);
    assign inst_BNE   = (op == 6'b000101);
    assign inst_BGTZ  = (op == 6'b000111) & (rt == 5'd0);
    assign inst_LW    = (op == 6'b100011);
    assign inst_SW    = (op == 6'b101011);
    assign inst_LUI   = (op == 6'b001111);
    assign inst_J     = (op == 6'b000010);

    wire        j_taken;
    wire [31:0] j_target;
    assign j_taken  = inst_J;
    assign j_target = {pc[31:28], target, 2'b00};

    wire        beq_taken;
    wire        bne_taken;
    wire        bgtz_taken;
    wire [31:0] br_target;
    assign beq_taken  = (rs_value == rt_value);
    assign bne_taken  = ~beq_taken;
    assign bgtz_taken = (~rs_value[31]) & (|rs_value);
    assign br_target[31:2] = pc[31:2] + {{14{offset[15]}}, offset};
    assign br_target[1:0]  = pc[1:0];

    assign jbr_taken = j_taken
                     | (inst_BEQ  & beq_taken)
                     | (inst_BNE  & bne_taken)
                     | (inst_BGTZ & bgtz_taken);
    assign jbr_target = j_taken ? j_target : br_target;

    regfile rf_module(
        .clk    (clk),
        .wen    (rf_wen),
        .raddr1 (rs),
        .raddr2 (rt),
        .waddr  (rf_waddr),
        .wdata  (rf_wdata),
        .rdata1 (rs_value),
        .rdata2 (rt_value),
        .test_addr(rf_addr),
        .test_data(rf_data)
    );

    wire inst_add, inst_sub, inst_slt, inst_sltu;
    wire inst_and, inst_nor, inst_or, inst_xor;
    wire inst_sll, inst_srl, inst_sra, inst_lui;
    assign inst_add = inst_ADDU | inst_ADDIU | inst_LW | inst_SW;
    assign inst_sub = inst_SUBU | inst_SUB;
    assign inst_slt = inst_SLT;
    assign inst_sltu= 1'b0;
    assign inst_and = inst_AND;
    assign inst_nor = inst_NOR;
    assign inst_or  = inst_OR;
    assign inst_xor = inst_XOR;
    assign inst_sll = inst_SLL;
    assign inst_srl = inst_SRL;
    assign inst_sra = 1'b0;
    assign inst_lui = inst_LUI;

    wire [31:0] sext_imm;
    wire inst_shf_sa;
    wire inst_imm_sign;
    assign sext_imm      = {{16{imm[15]}}, imm};
    assign inst_shf_sa   = inst_SLL | inst_SRL;
    assign inst_imm_sign = inst_ADDIU | inst_LUI | inst_LW | inst_SW;

    wire [31:0] alu_operand1;
    wire [31:0] alu_operand2;
    wire [11:0] alu_control;
    assign alu_operand1 = inst_shf_sa ? {27'd0,sa} : rs_value;
    assign alu_operand2 = inst_imm_sign ? sext_imm : rt_value;
    assign alu_control = {inst_add, inst_sub, inst_slt, inst_sltu,
                          inst_and, inst_nor, inst_or, inst_xor,
                          inst_sll, inst_srl, inst_sra, inst_lui};

    wire [31:0] alu_result;
    alu alu_module(
        .alu_control  (alu_control),
        .alu_src1     (alu_operand1),
        .alu_src2     (alu_operand2),
        .alu_result   (alu_result)
    );

    wire [3 :0] dm_wen;
    wire [31:0] dm_addr;
    wire [31:0] dm_wdata;
    wire [31:0] dm_rdata;
    assign dm_wen   = {4{inst_SW}} & resetn;
    assign dm_addr  = alu_result;
    assign dm_wdata = rt_value;
    data_ram data_ram_module(
        .clk   (clk),
        .wen   (dm_wen),
        .addr  (dm_addr[6:2]),
        .wdata (dm_wdata),
        .rdata (dm_rdata),
        .test_addr(mem_addr[6:2]),
        .test_data(mem_data)
    );

    wire inst_wdest_rt;
    wire inst_wdest_rd;
    assign inst_wdest_rt = inst_ADDIU | inst_LW | inst_LUI;
    assign inst_wdest_rd = inst_ADDU | inst_SUBU | inst_SUB | inst_SLT | inst_AND | inst_NOR
                         | inst_OR   | inst_XOR  | inst_SLL | inst_SRL;
    assign rf_wen   = (inst_wdest_rt | inst_wdest_rd) & resetn;
    assign rf_waddr = inst_wdest_rd ? rd : rt;
    assign rf_wdata = inst_LW ? dm_rdata : alu_result;
endmodule

