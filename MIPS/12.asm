.data

.text
    addi $t0, $zero, 30
    addi $t1, $zero, 5

    div $t0, $t1
    mflo $a0
    mfhi $a1

    li $v0, 1
    syscall