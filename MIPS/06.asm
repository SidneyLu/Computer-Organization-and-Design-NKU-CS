.data
    number1: .word 5
    number2: .word 10
.text
    lw		$t1, number1($zero)
    lw      $t2, number2($zero)
    add $t0, $t1, $t2

    li $v0, 1
    add $a0, $zero, $t0
    syscall
 
    