# Pipeline CPU Fib(10) demo
# Result: Mem[1] = 55 (0x00000037)
# Main hazards are resolved by EXE-stage forwarding.

        .text
        .globl main
main:
        addiu $8,  $0, 10      # n = 10
        addiu $9,  $0, 0       # a = fib(0)
        addiu $10, $0, 1       # b = fib(1)
        addiu $11, $0, 9       # remaining iterations to reach Fib(10)

loop:
        addiu $11, $11, -1     # update loop count first
        addu  $12, $9,  $10    # next = a + b
        addu  $13, $12, $0     # ALU->ALU forwarding
        addu  $9,  $10, $0     # a = b
        addu  $10, $12, $0     # b = next, needs forwarding
        bgtz  $11, loop        # count was updated several instructions earlier
        addu  $14, $10, $0     # delay slot, ALU->store producer

        sw    $14, 4($0)       # Mem[1] = Fib(10)

halt:
        j halt
        nop
