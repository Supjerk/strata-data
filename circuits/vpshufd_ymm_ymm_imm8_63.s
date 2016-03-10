  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovdqa %xmm2, %xmm8            #  1     0     4      OPC=vmovdqa_xmm_xmm         
  vpunpckhdq %ymm2, %ymm2, %ymm0  #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpckhpd %ymm8, %ymm0, %ymm1   #  3     0x8   5      OPC=vunpckhpd_ymm_ymm_ymm   
  vunpcklps %ymm2, %ymm1, %ymm7   #  4     0xd   4      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckldq %ymm7, %ymm1, %ymm1  #  5     0x11  4      OPC=vpunpckldq_ymm_ymm_ymm  
  retq                            #  6     0x15  1      OPC=retq                    
                                                                                    
.size target, .-target
