  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovsldup %ymm2, %ymm0           #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vpunpckhqdq %ymm0, %ymm2, %ymm7  #  2     0x4   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpcklps %ymm7, %ymm0, %ymm13   #  3     0x8   4      OPC=vunpcklps_ymm_ymm_ymm    
  vunpckhpd %ymm13, %ymm7, %ymm1   #  4     0xc   5      OPC=vunpckhpd_ymm_ymm_ymm    
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
