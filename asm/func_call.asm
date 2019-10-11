# Sample program for function call

Main:	addi  $4, $0, 2		# input: a = 2
	addi  $5, $0, 3         # input: b = 3
        add   $11, $31, $0      # temporaly save return address
	jal   Mult	        # input: f1 = 1
        add   $31, $11, $0	# restore original $31
        j     Skip              # jump to Skip
Mult:	mult  $4, $5            # multiply
        mflo  $1                # move result to $1
        jr    $31               # return to main
Skip:   jr    $31               # return to caller

