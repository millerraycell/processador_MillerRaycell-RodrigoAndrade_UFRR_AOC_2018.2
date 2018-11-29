.globl main
main:
	# t0 = a, t1 = b, t2 = FIB, t3 = i, t4 = n(8),
	li $t0, 0
	li $t1,1
	li $t2,0
	li $t3,0 
	li $t4,10
	for: beq $t3,$t4, sair
		add $t1,$t1,$t0 # b = b + a
		sub $t0,$t1,$t0 # a = b - a
		add $t3,$t3, 1
		j for
	sair:
		li $v0,10
		syscall