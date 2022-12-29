# Use logic Operators
.data 0x10000100
        wnum1: .word 5
        wnum2: .word 6
        wans1: .word 0
        wans2: .word 0
        wans3: .word 0
.text 0x00400000
main:
        lw $t0, wnum1
        lw $t1, wnum2
        #-----------------------
        and $t2, $t0, $t1
        sw  $t2, wans1
        #-------------------
        or $t3, $t0, $t1
        sw  $t3, wans2
        #-------------------
        not $t4, $t1
        #-------------------
        xor $t5,$t0,$t1
        #--------------------
        nor $t6, $t0, $t1
        #---------------------
        li $v0, 10
        syscall