`timescale 1ns / 1ps
module inst_rom(
    input      [5 :0] addr,
    output reg [31:0] inst
    );

    wire [31:0] inst_rom[39:0];
    //------------- 原始指令区（00H~48H保持不变）-------------//
    assign inst_rom[ 0] = 32'h24010001; // 00H: addiu $1 ,$0,#1
    assign inst_rom[ 1] = 32'h00011100; // 04H: sll   $2 ,$1,#4
    assign inst_rom[ 2] = 32'h00411821; // 08H: addu  $3 ,$2,$1
    assign inst_rom[ 3] = 32'h00022082; // 0CH: srl   $4 ,$2,#2
    assign inst_rom[ 4] = 32'h00642823; // 10H: subu  $5 ,$3,$4
    assign inst_rom[ 5] = 32'hAC250013; // 14H: sw    $5 ,#19($1)
    assign inst_rom[ 6] = 32'h00A23027; // 18H: nor   $6 ,$5,$2
    assign inst_rom[ 7] = 32'h00C33825; // 1CH: or    $7 ,$6,$3
    assign inst_rom[ 8] = 32'h00E64026; // 20H: xor   $8 ,$7,$6
    assign inst_rom[ 9] = 32'hAC08001C; // 24H: sw    $8 ,#28($0)
    assign inst_rom[10] = 32'h00C7482A; // 28H: slt   $9 ,$6,$7
    assign inst_rom[11] = 32'h11210002; // 2CH: beq   $9 ,$1,#2
    assign inst_rom[12] = 32'h24010004; // 30H: addiu $1 ,$0,#4
    assign inst_rom[13] = 32'h8C2A0013; // 34H: lw    $10,#19($1)
    assign inst_rom[14] = 32'h15450003; // 38H: bne   $10,$5,#3
    assign inst_rom[15] = 32'h00415824; // 3CH: and   $11,$2,$1
    assign inst_rom[16] = 32'hAC0B001C; // 40H: sw    $11,#28($0)
    assign inst_rom[17] = 32'hAC040010; // 44H: sw    $4 ,#16($0)
    assign inst_rom[18] = 32'h3C0C000C; // 48H: lui   $12,#12

    // 4CH 原本为 j 00H；按实验要求改为跳转到新增Fib段
    assign inst_rom[19] = 32'h08000014; // 4CH: j 50H

    //------------- 新增指令区（50H~80H）：计算 Fib(10) -------------//
    // GPR[13]=n=10, GPR[14]=idx=3, GPR[15]=fib(1)=1, GPR[16]=fib(2)=1
    assign inst_rom[20] = 32'h240D000A; // 50H: addiu $13,$0,#10
    assign inst_rom[21] = 32'h240E0003; // 54H: addiu $14,$0,#3
    assign inst_rom[22] = 32'h240F0001; // 58H: addiu $15,$0,#1
    assign inst_rom[23] = 32'h24100001; // 5CH: addiu $16,$0,#1
    assign inst_rom[24] = 32'h01F08821; // 60H: addu  $17,$15,$16

    // loop:
    assign inst_rom[25] = 32'h25CE0001; // 64H: addiu $14,$14,#1
    assign inst_rom[26] = 32'h02007821; // 68H: addu  $15,$16,$0
    assign inst_rom[27] = 32'h02208021; // 6CH: addu  $16,$17,$0
    assign inst_rom[28] = 32'h01F08821; // 70H: addu  $17,$15,$16
    assign inst_rom[29] = 32'h01AE9022; // 74H: sub   $18,$13,$14
    assign inst_rom[30] = 32'h1E40FFFA; // 78H: bgtz  $18,64H(loop)

    assign inst_rom[31] = 32'hAC110004; // 7CH: sw    $17,#4($0) ; Mem[1]=Fib(10)
    assign inst_rom[32] = 32'h08000000; // 80H: j 00H            ; 原4CH指令放到末尾

    always @(*) begin
        case (addr)
            6'd0 : inst <= inst_rom[0 ];
            6'd1 : inst <= inst_rom[1 ];
            6'd2 : inst <= inst_rom[2 ];
            6'd3 : inst <= inst_rom[3 ];
            6'd4 : inst <= inst_rom[4 ];
            6'd5 : inst <= inst_rom[5 ];
            6'd6 : inst <= inst_rom[6 ];
            6'd7 : inst <= inst_rom[7 ];
            6'd8 : inst <= inst_rom[8 ];
            6'd9 : inst <= inst_rom[9 ];
            6'd10: inst <= inst_rom[10];
            6'd11: inst <= inst_rom[11];
            6'd12: inst <= inst_rom[12];
            6'd13: inst <= inst_rom[13];
            6'd14: inst <= inst_rom[14];
            6'd15: inst <= inst_rom[15];
            6'd16: inst <= inst_rom[16];
            6'd17: inst <= inst_rom[17];
            6'd18: inst <= inst_rom[18];
            6'd19: inst <= inst_rom[19];
            6'd20: inst <= inst_rom[20];
            6'd21: inst <= inst_rom[21];
            6'd22: inst <= inst_rom[22];
            6'd23: inst <= inst_rom[23];
            6'd24: inst <= inst_rom[24];
            6'd25: inst <= inst_rom[25];
            6'd26: inst <= inst_rom[26];
            6'd27: inst <= inst_rom[27];
            6'd28: inst <= inst_rom[28];
            6'd29: inst <= inst_rom[29];
            6'd30: inst <= inst_rom[30];
            6'd31: inst <= inst_rom[31];
            6'd32: inst <= inst_rom[32];
            default: inst <= 32'd0;
        endcase
    end
endmodule
