# Find The Median for a sorted array 
.data 0x10000100
    array: .word 1, 3, 5, 7, 9, 11, 13, 15, 17, 19
    length: .word 10
    median: .word 0
.text
main:
        la $t0, array
        lw $t1, length
        div $t2, $t1, 2
        mul $t3, $t2, 4
        add $t4, $t0, $t3
        lw $t5, ($t4)
        sub $t4, $t4, 4
        lw $t6, ($t4)
        add $t7, $t6, $t5
        div $t8, $t7, 2
        sw $t8, median

li $v0, 10
syscall