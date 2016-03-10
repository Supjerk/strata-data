  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vorps %ymm2, %ymm2, %ymm9        #  1     0     4      OPC=vorps_ymm_ymm_ymm       
  vpunpckhdq %ymm2, %ymm2, %ymm14  #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklps %ymm9, %ymm14, %ymm13  #  3     0x8   5      OPC=vunpcklps_ymm_ymm_ymm   
  vunpckhpd %ymm13, %ymm13, %ymm1  #  4     0xd   5      OPC=vunpckhpd_ymm_ymm_ymm   
  retq                             #  5     0x12  1      OPC=retq                    
                                                                                     
.size target, .-target
