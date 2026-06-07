# Multi-cycle CPU Fib(10) demo
# Result: Mem[1] = 55 (0x00000037)

        .text
        .globl main
main:
        addiu $8,  $0, 10      # n = 10
        addiu $9,  $0, 0       # a = fib(0)
        addiu $10, $0, 1       # b = fib(1)
        addiu $11, $0, 9       # remaining iterations to reach Fib(10)

loop:
        addu  $12, $9,  $10    # next = a + b
        addu  $9,  $10, $0     # a = b
        addu  $10, $12, $0     # b = next
        addiu $11, $11, -1     # loop count--
        bgtz  $11, loop

        sw    $10, 4($0)       # Mem[1] = Fib(10)

halt:
        j halt
