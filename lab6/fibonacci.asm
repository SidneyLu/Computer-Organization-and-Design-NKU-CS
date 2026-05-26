.data
    theNumber: .word 0
    theAnswer: .word 0 
.text
    main:
        lw $a0, theNumber
        jal fibonacci
        sw $v0, theAnswer

    li $v0, 10            # 程序退出系统调用
    syscall

.globl fibonacci
    fibonacci:
        addi $sp, $sp, -12
        sw $a0, 8($sp)
        sw $s0, 4($sp)
        sw $ra, 0($sp)

        li $v0, 0
        beq $a0, 0, fibonacciDone

        li $v0, 1
        beq $a0, 1, fibonacciDone

        addi $a0, $a0, -1
        jal fibonacci
        move $s0, $v0

        lw $a0, 8($sp)
        subi $a0, $a0, -2
        jal fibonacci

        add, $v0, $s0, $v0

        fibonacciDone:
            lw $s1, 8($sp)
            lw $s2, 4($sp)
            lw $ra, 0($sp)
            addi $sp, $sp, 12
            jr $ra
