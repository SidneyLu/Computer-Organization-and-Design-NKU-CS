.data
    age: .word 23
.text
main:
    li $v0, 4
    la $a0, age
    syscall

    li $v0, 10
    syscall