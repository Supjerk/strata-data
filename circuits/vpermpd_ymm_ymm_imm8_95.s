  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm12_xmm13   #  1     0     5      OPC=callq_label              
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label              
  vmovhlps %xmm11, %xmm11, %xmm12       #  3     0xa   5      OPC=vmovhlps_xmm_xmm_xmm     
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xf   5      OPC=callq_label              
  vpunpcklqdq %ymm1, %ymm1, %ymm1       #  5     0x14  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                  #  6     0x18  1      OPC=retq                     
                                                                                           
.size target, .-target
