#ifndef LEN
#define LEN 1024
#endif

#ifndef REPEAT
#define REPEAT 20000
#endif

.arch armv9-a

.equ VEC_LEN, LEN
.equ OUTER_REPEAT, REPEAT
.equ DOT_PER_CHUNK, 120
.equ DOT_PER_ROUND, DOT_PER_CHUNK * (VEC_LEN / 8)
.equ EXPECTED_TOTAL, DOT_PER_ROUND * OUTER_REPEAT

.text
.global _start

_start:
    adrp x9, q_vec
    add  x9, x9, :lo12:q_vec
    adrp x10, k_vec
    add  x10, x10, :lo12:k_vec
    adrp x11, repeat_count
    add  x11, x11, :lo12:repeat_count
    ldr  x7, [x11]
    mov  x2, xzr

outer_loop:
    mov  x0, x9
    mov  x1, x10
    mov  w3, #VEC_LEN

dot_loop:
    ldr  w4, [x0], #4
    ldr  w5, [x1], #4
    madd x2, x4, x5, x2
    subs w3, w3, #1
    bne  dot_loop
dot_loop_end:

    subs x7, x7, #1
    bne  outer_loop

    adrp x6, expected_total
    add  x6, x6, :lo12:expected_total
    ldr  x6, [x6]
    cmp  x2, x6
    cset w0, ne
    mov  x8, #93
    svc  #0

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
