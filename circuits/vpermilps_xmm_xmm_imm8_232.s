  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovupd %xmm2, %xmm6                 #  2     0x5   4      OPC=vmovupd_xmm_xmm         
  vpunpckldq %xmm11, %xmm6, %xmm15     #  3     0x9   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vpunpckldq %xmm11, %xmm15, %xmm1     #  4     0xe   5      OPC=vpunpckldq_xmm_xmm_xmm  
  retq                                 #  5     0x13  1      OPC=retq                    
                                                                                         
.size target, .-target