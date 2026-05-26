a0=4
v0=0

factorial(4)
s0(4)
ra(4)
v0 = 1
beq false
s0 = 4
a0 = 3
    factorial(3)
        s0(3)=4
        ra(3)
        v0 = 1
        beq false
        s0 = 3
        a0 = 2
            factorial(2)
                s0(2)=3
                ra(2)
                v0 = 1
                beq false
                s0 = 2
                a0 = 1
                    factorial(1)
                        s0(1)=2
                        ra(1)   
                        v0 = 1
                        beq false
                        s0 = 1
                        a0 = 0
                            factorial(0)
                                s0(0)=1
                                ra(0)
                                v0 = 1
                                beq true
                                factorialDone
                        s0 = 1        
                        v0 = v0 * s0 = 1 x 1
                        factorialDone
                s0 = 2
                v0 = v0 * s0 = 1 x 2
                factorialDone
        s0 = 3
        v0 = v0 * s0 = 2 x 3
        factorialDone
s0 = 4
v0 = v0 * s0 = 6 x 4