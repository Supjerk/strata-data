  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vmovsldup %xmm2, %xmm1               #  1     0     4      OPC=vmovsldup_xmm_xmm       
  callq .move_128_64_xmm3_xmm10_xmm11  #  2     0x4   5      OPC=callq_label             
  vunpcklps %xmm11, %xmm3, %xmm3       #  3     0x9   5      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckldq %xmm3, %xmm11, %xmm6      #  4     0xe   4      OPC=vpunpckldq_xmm_xmm_xmm  
  punpckhqdq %xmm6, %xmm1              #  5     0x12  4      OPC=punpckhqdq_xmm_xmm      
  retq                                 #  6     0x16  1      OPC=retq                    
                                                                                         
.size target, .-target
