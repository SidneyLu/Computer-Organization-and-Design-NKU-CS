`timescale 1ns / 1ps
//*************************************************************************
//   > 文件名: multiply.v
//   > 功能  : 32位乘法器模块
//   > 描述  : 实现32位有符号乘法，结果为64位(HI:LO)
//   > 作者  : LOONGSON
//   > 日期  : 2016-04-14
//*************************************************************************
module multiply(              // 乘法器模块
    input         clk,        // 系统时钟
    input         mult_begin, // 乘法开始信号
    input  [31:0] mult_op1,   // 乘数1(32位)
    input  [31:0] mult_op2,   // 乘数2(32位)
    output [63:0] product,    // 乘法结果(64位)：product[63:32]为HI，product[31:0]为LO
    output        mult_end    // 乘法完成信号
);

    // 乘法有效信号：表示乘法运算正在进行
    reg mult_valid;
    assign mult_end = mult_valid & ~(|multiplier);  // 乘法完成条件：乘法有效且乘数2已全部移位完毕(变为0)
    always @(posedge clk)
    begin
        if (!mult_begin || mult_end)  // 乘法未开始或已完成时，清除有效信号
        begin
            mult_valid <= 1'b0;
        end
        else  // 乘法开始时，设置有效信号
        begin
            mult_valid <= 1'b1;
        end
    end

    // 操作数符号处理：将操作数转换为绝对值进行运算
    wire        op1_sign;      // 操作数1符号位
    wire        op2_sign;      // 操作数2符号位
    wire [31:0] op1_absolute;  // 操作数1绝对值
    wire [31:0] op2_absolute;  // 操作数2绝对值
    assign op1_sign = mult_op1[31];  // 提取操作数1符号位
    assign op2_sign = mult_op2[31];  // 提取操作数2符号位
    assign op1_absolute = op1_sign ? (~mult_op1+1) : mult_op1;  // 如果为负数，取绝对值
    assign op2_absolute = op2_sign ? (~mult_op2+1) : mult_op2;  // 如果为负数，取绝对值

    // 被乘数寄存器：存储被乘数，每次迭代左移1位
    reg  [63:0] multiplicand;
    always @ (posedge clk)
    begin
        if (mult_valid)  // 乘法进行中：被乘数左移1位
        begin    // 左移操作：为下一次部分积累加做准备
            multiplicand <= {multiplicand[62:0],1'b0};
        end
        else if (mult_begin)  // 乘法开始：初始化被乘数为操作数1的绝对值
        begin   // 将32位操作数1扩展到64位(高32位为0)
            multiplicand <= {32'd0,op1_absolute};
        end
    end

    // 乘数寄存器：存储乘数，每次迭代右移1位
    reg  [31:0] multiplier;
    always @ (posedge clk)
    begin
        if (mult_valid)  // 乘法进行中：乘数右移1位
        begin   // 右移操作：检查乘数的每一位是否为1
            multiplier <= {1'b0,multiplier[31:1]}; 
        end
        else if (mult_begin)  // 乘法开始：初始化乘数为操作数2的绝对值
        begin   // 将操作数2的绝对值加载到乘数寄存器
            multiplier <= op2_absolute; 
        end
    end
    
    // 部分积：根据乘数最低位决定是否累加被乘数
    // 如果乘数最低位为1，部分积为被乘数；否则为0
    wire [63:0] partial_product;
    assign partial_product = multiplier[0] ? multiplicand : 64'd0;
    
    // 乘法结果累加器：累加所有部分积
    reg [63:0] product_temp;
    always @ (posedge clk)
    begin
        if (mult_valid)  // 乘法进行中：累加部分积
        begin
            product_temp <= product_temp + partial_product;
        end
        else if (mult_begin)  // 乘法开始：清零累加器
        begin
            product_temp <= 64'd0;  // 初始化为0
        end
    end 
     
    // 结果符号位：两个操作数符号异或
    // 如果两个操作数符号不同，结果为负数
    reg product_sign;
    always @ (posedge clk)  // 在乘法进行中保存符号位
    begin
        if (mult_valid)
        begin
              product_sign <= op1_sign ^ op2_sign;  // 异或运算：同号为0(正)，异号为1(负)
        end
    end 
    
    // 最终结果：根据符号位决定是否需要取反
    // 如果结果为负数，对累加结果取反加1(求补码)
    assign product = product_sign ? (~product_temp+1) : product_temp;
endmodule