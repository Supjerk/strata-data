  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm8_xmm9    #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm2, %xmm2, %xmm10      #  2     0x5   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vpunpckhqdq %xmm9, %xmm2, %xmm11      #  3     0x9   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xe   5      OPC=callq_label              
  retq                                  #  5     0x13  1      OPC=retq                     
                                                                                           
.size target, .-target
