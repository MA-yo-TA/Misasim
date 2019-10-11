save:   .word 5  #save[0] = 5
	.word 5  #save[1] = 5
	.word 5  #save[2] = 5
	.word 5  #save[3] = 5
	.word 5  #save[4] = 5
	.word 5  #save[5] = 5
	.word 5  #save[6] = 5
	.word 5  #save[7] = 5
	.word 5  #save[8] = 5
	.word 5  #save[9] = 5
	.word 1  #save[10] = 1

Main:   addi $19, $0, 0  # $19 is i. i = 0 
	addi $20, $0, 1  # $20 is j. j = 1
	addi $21, $0, 5  # $21 is k. k = 5
	addi $10, $0, save  # $10 = address of save[0]

Loop:	sll $9, $19, 2 # $9 = i * 4 # 4倍してるのは配列の添え字をアドレスの差分に変換してる
	add $11, $10, $9  # $11 = save[0]'s adress + i * 4  
	lw $8, 0($11) # $8 = save[i]
	add $19, $19, $20 # else i = i + j
	beq $8, $21, Loop # if save[i] == k then goto Loop

Exit:	sub $19, $19, $20
	addi $19, $19, 1 # ++i
	jr $31
