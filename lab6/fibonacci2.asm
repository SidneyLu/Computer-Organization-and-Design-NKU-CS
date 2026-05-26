.data
    theNumber: .word 0
    theAnswer: .word 0 

.text
.globl main
main:
    lw $a0, theNumber
    jal fibonacci
    sw $v0, theAnswer

    li $v0, 10
    syscall

.globl fibonacci
fibonacci:
    addi $sp, $sp, -12
    sw $s1, 8($sp)
    sw $s2, 4($sp)
    sw $ra, 0($sp)

    # 终止条件：n == 0 时初始化迭代值
    ble $a0, 0, init_fib

    # 递归 n-1
    addi $a0, $a0, -1
    jal fibonacci

    add $v0, $s1, $s2
    move $s2, $s1
    move $s1, $v0

    j fibonacciDone

init_fib:
    # 迭代初始值：fib(0)=0, fib(1)=1
    li $s1, 1
    li $s2, 0
    li $v0, 0

fibonacciDone:
    lw $s1, 8($sp)
    lw $s2, 4($sp)
    lw $ra, 0($sp)
    addi $sp, $sp, 12
    jr $ra