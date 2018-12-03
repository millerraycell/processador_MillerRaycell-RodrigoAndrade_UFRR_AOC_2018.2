.globl main
main:
	li $t0,48
	li $t1,33
	
	se0: beq $t0,$t1, sair

	t0maior: bgt $t0,$t1, CompMaiorP
	
	t1maior: bgt $t1,$t0, CompMaiorS
	
	CompMaiorP:
		sub $t0,$t0,$t1
		j se0
	CompMaiorS:
		sub $t1,$t1,$t0
		j se0

	sair:
		li $v0,10
		syscall