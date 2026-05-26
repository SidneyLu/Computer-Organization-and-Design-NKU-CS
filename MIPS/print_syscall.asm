.data

.text
    # syscall
    
    # 输出，把要输出的数据放在以下寄存器
    # 1 print integer $a0
    # 2 print float $f12
    # 3 print double $f12
    # 4 print string $a0 （字符串地址）
    
    # 输入，把输入的数据读入以下寄存器
    # 5 read integer $v0
    # 6 read float $f0
    # 7 read double $f0
    
    # 输入字符串前需要提供两个参数
    # 8 read string $a0（目标地址） $a1（字符数+1）
    
    # 退出
    # 10 exit

    # 11 print character $a0 = integer
    # 12 read character char in $v0

    # li
    # lb
    # lh
    # lw
    # la

    # lwc1
    # ldc1
