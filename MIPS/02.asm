.data
    myCharacter: .byte 'm'
.text
main:
    la $v0, 4
    la $a0, myCharacter
    syscall

    la $v0, 10
    syscall
