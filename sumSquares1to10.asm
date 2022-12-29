# Sum of Squares from 1 to 10
.data 0x10000100
        sumOfSquares: .word 0
    
.text
main:
        li $t0,10
        li $t1,1
        li $t2,0
sumloop:
        mul $t3,$t1,$t1
        add $t2,$t2,$t3
        add $t1,$t1,1
        ble $t1,$t0,sumloop
        sw $t2,sumOfSquares
#----------------------------
li $v0,10
syscall