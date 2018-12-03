.text
.globl main
main: 
	li $s2, 5
	li $s3, 1
	
	sub $s1,$s2,$s3
	bge $s1,$s2, se # bge - maior ou igual que
	j senao
	
	se:
		li $s1,1
		j fim
		
		
	senao:	
		li $s1,3
	 
	fim:
		li $v0,10
		syscall