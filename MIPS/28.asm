.data
    theNumber: .word 0
    theAnswer: .word 0    
.text
    main:
        lw $a0, theNumber
        sw $v0, theAnswer

.globl  factorial
factorial:
    addi $sp, $sp, -8
    sw $ra, ($sp)
    sw $s0, 4($sp)

    li $v0, 1
    beq $a0, 0, factorialDone

    move $s0, $a0,
    sub $a0, $a0, 1
    jal factorial

    mul $v0, $s0, $v0

    factorialDone:
    lw $ra, ($sp)
    lw $s0, 4($sp)
    addi $sp, $sp, 8
    jr $ra