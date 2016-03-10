  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vpunpcklqdq %ymm2, %ymm2, %ymm1     #  1     0     4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_256_128_ymm1_xmm8_xmm9  #  2     0x4   5      OPC=callq_label              
  movhlps %xmm9, %xmm8                #  3     0x9   4      OPC=movhlps_xmm_xmm          
  callq .move_64_128_xmm8_xmm9_xmm1   #  4     0xd   5      OPC=callq_label              
  retq                                #  5     0x12  1      OPC=retq                     
                                                                                         
.size target, .-target
