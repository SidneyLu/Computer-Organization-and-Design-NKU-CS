`timescale 1ns / 1ps
//*************************************************************************
//   > ?????: adder.v
//   > ????  ???????????????"+"???????????????????
//   > ????  : LOONGSON
//   > ????  : 2016-04-14
//*************************************************************************
module adder(
    input  [31:0] operand1,
    input  [31:0] operand2,
    input         cin,
    output [31:0] result,
    output        cout
    );
    assign {cout,result} = operand1 + operand2 + cin;

endmodule

