# Compute The Volume and Surface of Rectangular 
.data 0x10000100
        aside: .word 73
        bside: .word 14
        cside: .word 16

        volume: .word 0
        surfaceArea: .word 0
.text 
main:
        lw $t0,aside
        lw $t1,bside
        lw $t2,cside
        #volume = aside * bside * cside
        mul $t3,$t0,$t1
        mul $t4,$t3,$t2
        sw  $t4,volume
        #------------------
        #surfaceArea = 2 (aside * bside + aside * cside + bside * cside)
        mul $t5, $t0,$t2
        mul $t6, $t1,$t2
        add $t7, $t3,$t5
        add $t7, $t7,$t6
        mul $t7,$t7,2
        sw $t7,surfaceArea
        #----------------
        li $v0,10
        syscall