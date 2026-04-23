#ifndef LEN
#define LEN 1024
#endif

#ifndef REPEAT
#define REPEAT 20000
#endif

.option norvc

.equ VEC_LEN, LEN
.equ OUTER_REPEAT, REPEAT
.equ DOT_PER_CHUNK, 120
.equ DOT_PER_ROUND, DOT_PER_CHUNK * (VEC_LEN / 8)
.equ EXPECTED_TOTAL, DOT_PER_ROUND * OUTER_REPEAT

.text
.globl _start

_start:
    la   s1, q_vec
    la   s2, k_vec
    la   t5, repeat_count
    ld   s3, 0(t5)
    li   s0, 0

outer_loop:
    mv   a0, s1
    mv   a1, s2
    li   t0, VEC_LEN

dot_loop:
    lw   t1, 0(a0)
    lw   t2, 0(a1)
    mul  t4, t1, t2
    add  s0, s0, t4
    addi a0, a0, 4
    addi a1, a1, 4
    addi t0, t0, -1
    bnez t0, dot_loop
dot_loop_end:

    addi s3, s3, -1
    bnez s3, outer_loop

    la   t5, expected_total
    ld   t5, 0(t5)
    bne  s0, t5, failed

    li   a0, 0
    li   a7, 93
    ecall

failed:
    li   a0, 1
    li   a7, 93
    ecall

.section .rodata
.balign 16
repeat_count:
    .quad OUTER_REPEAT
expected_total:
    .quad EXPECTED_TOTAL

.balign 16
q_vec:
.rept (LEN / 8)
    .word 1, 2, 3, 4, 5, 6, 7, 8
.endr

.balign 16
k_vec:
.rept (LEN / 8)
    .word 8, 7, 6, 5, 4, 3, 2, 1
.endr
