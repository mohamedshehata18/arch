# Simple Calculator
.data 0x10000100
		wnum1: .word 651
		wnum2: .word 42
		wans1: .word 0
		wans2: .word 0
		wans3: .word 0		
		wans4: .word 0		
		wans5: .word 0			
	
.text
main: 	lw $t0, wnum1
	  	lw $t1, wnum2
	  	#-------------------
	  	add $t2,$t0,$t1
	  	sw $t2, wans1
	  	#-------------------
	  	mul $t3,$t0,$t1
		sw $t3, wans2
		#-------------------
		rem $t4,$t0,$t1
		sw $t4, wans3
		#--------------------
		sub $t5,$t0,$t1
		sw $t5, wans4
		#--------------------
		div $t6,$t0,$t1
		sw $t6, wans5


		li $v0,10
		syscall
	







li $v0,10
syscall