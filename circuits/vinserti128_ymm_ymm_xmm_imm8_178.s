  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  callq .move_256_128_ymm2_xmm8_xmm9   #  2     0x5   5      OPC=callq_label              
  vpunpcklqdq %xmm13, %xmm3, %xmm2     #  3     0xa   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovsd %xmm12, %xmm2, %xmm8          #  4     0xf   5      OPC=vmovsd_xmm_xmm_xmm       
  callq .move_128_256_xmm8_xmm9_ymm1   #  5     0x14  5      OPC=callq_label              
  retq                                 #  6     0x19  1      OPC=retq                     
                                                                                          
.size target, .-target
