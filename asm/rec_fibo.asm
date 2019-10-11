retad:  .word 0  # リターンアドレスを退避させる
save:   .word 0  # save[0] = 5
        .word 1  # save[1] = 5
        .word 0
        .word 0
        .word 0
        .word 0
        .word 0
        .word 0
        .word 0
        .word 0
        .word 0
        .word 0
        .word 0
        .word 0
        .word 0
        .word 0
        .word 0
        .word 0
        .word 0
        .word 0
stack:  .word 0  #addr[0] = 0

Main: 
      addi $10, $00, save   # save[0]のアドレス
      addi $11, $00, stack
      addi $11, $00, 4      # $11はスタックポインタ
      addi $12, $00, stack  # $12はフレームポインタ
      addi $23, $00, 21     # 求めたい項数をを保持．
      
      addi $30, $30, 0

Func:


Exit: jr $31
