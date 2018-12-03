.text
.globl main
main: 
	li $s2, 5
	li $s3, 4
	add $s1,$s2,$s3
	
	li $v0,10
	syscall