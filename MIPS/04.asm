.data
    PI: .float 3.14
.text
main:
    li $v0, 2
    lwc1 $f12, PI
    syscall

    li $v0, 10
    syscall
