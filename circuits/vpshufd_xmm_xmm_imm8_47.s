  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm6, %xmm7, %xmm8                #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm  
  punpckldq %xmm4, %xmm7                        #  3     0x9   4      OPC=punpckldq_xmm_xmm       
  vunpcklps %xmm7, %xmm8, %xmm1                 #  4     0xd   4      OPC=vunpcklps_xmm_xmm_xmm   
  retq                                          #  5     0x11  1      OPC=retq                    
                                                                                                  
.size target, .-target
