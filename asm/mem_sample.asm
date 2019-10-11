# Sample program of memory load and store

val:	.word 7			# memory data
	.word 4			# memory data
	.word 0			# memory data
flag:	.word 0			# memory data (means if 0 substract, 1 multiply)

main:	addi  $1, $0, val	# load memory address of "val"
	lw    $2, 0($1)		# load word from memory (address = val)
	lw    $3, 4($1)		# load word from memory (address = val+4)
	add   $4, $2, $3	# compute add of the two values
	sw    $4, 8($1)		# store result to memory (address = val+8)
	addi  $5, $0, flag	# load memory address of "flag"
	lw    $5, 0($5)		# load word from memory (address = flag)
	beq   $5, $0, target	# branch to target if flag == 0
	mult  $2, $3		# compute multiply of the two values
        mflo  $4                # move result to gp register
	sw    $4, 8($1)		# store result to memory (address = val+8)
	j     fin		# junp to "fin"
target:	sub   $4, $2, $3	# compute substract of the two values
	sw    $4, 8($1)		# store result to memory (address = val+8)
fin:    jr    $31               # return to caller

