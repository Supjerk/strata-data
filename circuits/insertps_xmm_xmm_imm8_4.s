  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm1, %xmm4, %xmm10               #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm12_xmm13           #  3     0x9   5      OPC=callq_label             
  vmovdqa %xmm12, %xmm4                         #  4     0xe   5      OPC=vmovdqa_xmm_xmm         
  vmovdqa %xmm10, %xmm6                         #  5     0x13  5      OPC=vmovdqa_xmm_xmm         
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x18  5      OPC=callq_label             
  retq                                          #  7     0x1d  1      OPC=retq                    
                                                                                                  
.size target, .-target
