.data
    message: .asciiz "Enter the value of e: "
    zeroAsDouble: .double 0.0
.text
    ldc1 $f4, zeroAsFloat

    li $v0, 4
    la $a0, message
    syscall

    li $v0, 7
    syscall

    li $v0, 3
    add.d $f12, $f0, $f4
    syscall