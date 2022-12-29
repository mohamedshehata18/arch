# Check if the Number is Even or Odd
.data 0x10000100
        even_num: .asciiz "The Number is Even "
        odd: .asciiz "The Number is Odd"
#----------------------------------------
.text 
main:
        li $v0,5
        syscall 
        move $t0,$v0
        li $t1,2
        rem $t2,$t0,$t1
        beqz $t2,even
        la $a0,odd
        b end
#-------------------------
even:
        la $a0,even_num
        b end
#-----------------------
end:
        li $v0,4
        syscall
#----------------------
li $v0,10
syscall