  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm14          #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vpunpckhdq %ymm2, %ymm2, %ymm13  #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklps %ymm14, %ymm13, %ymm3  #  3     0x8   5      OPC=vunpcklps_ymm_ymm_ymm   
  vunpcklps %ymm13, %ymm2, %ymm7   #  4     0xd   5      OPC=vunpcklps_ymm_ymm_ymm   
  vunpckhps %ymm3, %ymm7, %ymm1    #  5     0x12  4      OPC=vunpckhps_ymm_ymm_ymm   
  retq                             #  6     0x16  1      OPC=retq                    
                                                                                     
.size target, .-target
