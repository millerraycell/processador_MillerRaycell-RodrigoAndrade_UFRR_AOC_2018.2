.text
.globl main
main: 
	li $s2, 9
	li $s3, 7
	sub $s1,$s2,$s3

	li $v0,10
	syscall