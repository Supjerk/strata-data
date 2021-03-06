  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm2, %xmm2, %xmm1               #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label              
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3  #  3     0x9   5      OPC=callq_label              
  vunpcklps %xmm1, %xmm7, %xmm5                 #  4     0xe   4      OPC=vunpcklps_xmm_xmm_xmm    
  vpunpckldq %xmm5, %xmm3, %xmm1                #  5     0x12  4      OPC=vpunpckldq_xmm_xmm_xmm   
  retq                                          #  6     0x16  1      OPC=retq                     
                                                                                                   
.size target, .-target
