# 依据实验附件示意图：使用 sub 与 bgtz 计算 Fib(10)
# 寄存器约定：
#   $13 = n(10)
#   $14 = idx(3)
#   $15 = fib(1)
#   $16 = fib(2)
#   $17 = 当前fib值
#   $18 = n - idx

.text
.globl main
main:
    # Init
    addiu $13, $0, 10      # GPR[13] = n = 10
    addiu $14, $0, 3       # GPR[14] = idx = 3
    addiu $15, $0, 1       # GPR[15] = fib(1) = 1
    addiu $16, $0, 1       # GPR[16] = fib(2) = 1
    addu  $17, $15, $16    # GPR[17] = fib(3)

loop:
    addiu $14, $14, 1      # GPR[14] = GPR[14] + 1
    addu  $15, $16, $0     # GPR[15] = GPR[16]
    addu  $16, $17, $0     # GPR[16] = GPR[17]
    addu  $17, $15, $16    # GPR[17] = GPR[15] + GPR[16]
    sub   $18, $13, $14    # GPR[18] = GPR[13] - GPR[14]
    bgtz  $18, loop        # 若 GPR[18] > 0 则跳转 loop

    sw    $17, 4($0)       # Mem[1] = GPR[17] = Fib(10)

halt:
    j halt
