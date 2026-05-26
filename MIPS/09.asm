.data

.text
    addi $t0, $zero, 2000
    addi $t1, $zero, 10

    mult	$t0, $t1			# $t0 * $t1 = Hi and Lo registers
    mflo	$s0
    
    li $v0, 1
    add $v0, $zero, $s0
    syscall
    