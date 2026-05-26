# addr = baseAddr + (i*colSize + j) * dataSize
.data
    mdArray: .word 2, 5
             .word 3, 7
    size: .word 2
    .eqv DATA_SIZE 4
.text
    main:
        la $a0, mdArray
        lw $a1, size
        jal sumDiagonal

        move $a0, $v0
        li $v0, 1
        syscall

        li $v0, 10
        syscall

    sumDiagonal
        li $v0, 0
        li $t0, 0

        sumLoop:
            #偏移量
            mul $t1, $t0, $a1 # t1 = i*colSize
            add $t1, $t1, $t0 # t1 = i*colSize + i
            mul $t1, $t1, DATA_SIZE
            #+基址
            add $t1, $t1, $a0

            lw $t2, ($t1)
            add $v0, $v0, $t2
            add $t0, $t0, 1

            blt $t0, $a1, sumLoop
        jal $ra