# Computes the Sum and Average for an array
.data
        array:.word 1, 3, 5, 7, 9, 11, 13, 15, 17, 19
        length:.word 10
        sum: .word 0
        avg:.word 0
.text
main:
        la $t0,array
        li $t1,0
        lw $t2,length
        li $t3,0
sumloop:
        lw $t4,($t0)
        add $t3,$t3,$t4
        add $t1,$t1,1
        add $t0,$t0,4
        blt $t1,$t2,sumloop
        sw $t3,sum
# Average 
        div,$t5,$t3,$t2
        sw $t5,avg
li $v0,10
syscall
