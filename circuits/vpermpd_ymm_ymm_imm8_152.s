  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9   #  1     0     5      OPC=callq_label              
  vbroadcastsd %xmm9, %ymm14          #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm     
  vpunpcklqdq %ymm2, %ymm14, %ymm1    #  3     0xa   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm8_xmm9  #  4     0xe   5      OPC=callq_label              
  callq .move_64_128_xmm8_xmm9_xmm1   #  5     0x13  5      OPC=callq_label              
  retq                                #  6     0x18  1      OPC=retq                     
                                                                                         
.size target, .-target
