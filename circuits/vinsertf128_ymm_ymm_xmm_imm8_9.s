  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vpbroadcastq %xmm12, %ymm1           #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm     
  vbroadcastsd %xmm13, %ymm5           #  3     0xa   5      OPC=vbroadcastsd_ymm_xmm     
  vpunpckhqdq %ymm5, %ymm1, %ymm1      #  4     0xf   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_128_64_xmm2_xmm8_xmm9    #  5     0x13  5      OPC=callq_label              
  callq .move_64_128_xmm8_xmm9_xmm1    #  6     0x18  5      OPC=callq_label              
  retq                                 #  7     0x1d  1      OPC=retq                     
                                                                                          
.size target, .-target
