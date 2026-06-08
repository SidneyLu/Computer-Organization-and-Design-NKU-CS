`timescale 1ns / 1ps
//*************************************************************************
//   > 文件名: regfile.v
//   > 功能  : 32个通用寄存器堆模块
//   > 描述  : 实现32个32位寄存器，支持2读1写端口
//   > 作者  : LOONGSON
//   > 日期  : 2016-04-14
//*************************************************************************
module regfile(
    input             clk,        // 系统时钟
    input             wen,        // 寄存器堆写使能
    input      [4 :0] raddr1,    // 读端口1地址
    input      [4 :0] raddr2,    // 读端口2地址
    input      [4 :0] waddr,     // 写端口地址
    input      [31:0] wdata,     // 写端口数据
    output reg [31:0] rdata1,    // 读端口1数据
    output reg [31:0] rdata2,    // 读端口2数据
    input      [4 :0] test_addr, // 测试端口地址(用于调试)
    output reg [31:0] test_data  // 测试端口数据(用于调试)
    );
    reg [31:0] rf[31:0];  // 32个32位寄存器
     
    // 三端口寄存器堆：
    // - 两个读端口(组合逻辑读取)
    // - 一个写端口(时钟上升沿写入)
    // - 寄存器0硬连线为0(符合MIPS规范)

    // 寄存器写入：时钟上升沿写入
    always @(posedge clk)
    begin
        if (wen)  // 写使能有效时写入
        begin
            rf[waddr] <= wdata;  // 写入指定寄存器
        end
    end
     
    // 读端口1：组合逻辑读取
    // 写优先机制：如果正在写入的寄存器与读端口地址相同，直接返回写入数据
    // 这样可以避免数据冒险，实现写后读(RAW)的前递
    always @(*)
    begin
        if ((raddr1 != 5'd0) && wen && (waddr == raddr1))  // 写优先：正在写入的寄存器
        begin
            rdata1 <= wdata;  // 直接返回写入数据
        end
        else
        begin
            case (raddr1)  // 从寄存器堆读取
                5'd1 : rdata1 <= rf[1 ];
                5'd2 : rdata1 <= rf[2 ];
                5'd3 : rdata1 <= rf[3 ];
                5'd4 : rdata1 <= rf[4 ];
                5'd5 : rdata1 <= rf[5 ];
                5'd6 : rdata1 <= rf[6 ];
                5'd7 : rdata1 <= rf[7 ];
                5'd8 : rdata1 <= rf[8 ];
                5'd9 : rdata1 <= rf[9 ];
                5'd10: rdata1 <= rf[10];
                5'd11: rdata1 <= rf[11];
                5'd12: rdata1 <= rf[12];
                5'd13: rdata1 <= rf[13];
                5'd14: rdata1 <= rf[14];
                5'd15: rdata1 <= rf[15];
                5'd16: rdata1 <= rf[16];
                5'd17: rdata1 <= rf[17];
                5'd18: rdata1 <= rf[18];
                5'd19: rdata1 <= rf[19];
                5'd20: rdata1 <= rf[20];
                5'd21: rdata1 <= rf[21];
                5'd22: rdata1 <= rf[22];
                5'd23: rdata1 <= rf[23];
                5'd24: rdata1 <= rf[24];
                5'd25: rdata1 <= rf[25];
                5'd26: rdata1 <= rf[26];
                5'd27: rdata1 <= rf[27];
                5'd28: rdata1 <= rf[28];
                5'd29: rdata1 <= rf[29];
                5'd30: rdata1 <= rf[30];
                5'd31: rdata1 <= rf[31];
                default : rdata1 <= 32'd0;  // 寄存器0返回0
            endcase
        end
    end
    // 读端口2：组合逻辑读取(与读端口1相同的机制)
    always @(*)
    begin
        if ((raddr2 != 5'd0) && wen && (waddr == raddr2))  // 写优先：正在写入的寄存器
        begin
            rdata2 <= wdata;  // 直接返回写入数据
        end
        else
        begin
            case (raddr2)  // 从寄存器堆读取
                5'd1 : rdata2 <= rf[1 ];
                5'd2 : rdata2 <= rf[2 ];
                5'd3 : rdata2 <= rf[3 ];
                5'd4 : rdata2 <= rf[4 ];
                5'd5 : rdata2 <= rf[5 ];
                5'd6 : rdata2 <= rf[6 ];
                5'd7 : rdata2 <= rf[7 ];
                5'd8 : rdata2 <= rf[8 ];
                5'd9 : rdata2 <= rf[9 ];
                5'd10: rdata2 <= rf[10];
                5'd11: rdata2 <= rf[11];
                5'd12: rdata2 <= rf[12];
                5'd13: rdata2 <= rf[13];
                5'd14: rdata2 <= rf[14];
                5'd15: rdata2 <= rf[15];
                5'd16: rdata2 <= rf[16];
                5'd17: rdata2 <= rf[17];
                5'd18: rdata2 <= rf[18];
                5'd19: rdata2 <= rf[19];
                5'd20: rdata2 <= rf[20];
                5'd21: rdata2 <= rf[21];
                5'd22: rdata2 <= rf[22];
                5'd23: rdata2 <= rf[23];
                5'd24: rdata2 <= rf[24];
                5'd25: rdata2 <= rf[25];
                5'd26: rdata2 <= rf[26];
                5'd27: rdata2 <= rf[27];
                5'd28: rdata2 <= rf[28];
                5'd29: rdata2 <= rf[29];
                5'd30: rdata2 <= rf[30];
                5'd31: rdata2 <= rf[31];
                default : rdata2 <= 32'd0;  // 寄存器0返回0
            endcase
        end
    end
    // 测试端口：用于调试观察寄存器堆内容
    // 组合逻辑读取，不参与流水线操作
    always @(*)
    begin
        case (test_addr)
            5'd1 : test_data <= rf[1 ];
            5'd2 : test_data <= rf[2 ];
            5'd3 : test_data <= rf[3 ];
            5'd4 : test_data <= rf[4 ];
            5'd5 : test_data <= rf[5 ];
            5'd6 : test_data <= rf[6 ];
            5'd7 : test_data <= rf[7 ];
            5'd8 : test_data <= rf[8 ];
            5'd9 : test_data <= rf[9 ];
            5'd10: test_data <= rf[10];
            5'd11: test_data <= rf[11];
            5'd12: test_data <= rf[12];
            5'd13: test_data <= rf[13];
            5'd14: test_data <= rf[14];
            5'd15: test_data <= rf[15];
            5'd16: test_data <= rf[16];
            5'd17: test_data <= rf[17];
            5'd18: test_data <= rf[18];
            5'd19: test_data <= rf[19];
            5'd20: test_data <= rf[20];
            5'd21: test_data <= rf[21];
            5'd22: test_data <= rf[22];
            5'd23: test_data <= rf[23];
            5'd24: test_data <= rf[24];
            5'd25: test_data <= rf[25];
            5'd26: test_data <= rf[26];
            5'd27: test_data <= rf[27];
            5'd28: test_data <= rf[28];
            5'd29: test_data <= rf[29];
            5'd30: test_data <= rf[30];
            5'd31: test_data <= rf[31];
            default : test_data <= 32'd0;  // 寄存器0返回0
        endcase
    end
endmodule