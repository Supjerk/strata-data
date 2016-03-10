  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  vmovddup %ymm2, %ymm13             #  1     0     4      OPC=vmovddup_ymm_ymm        
  vmovsldup %ymm13, %ymm1            #  2     0x4   5      OPC=vmovsldup_ymm_ymm       
  vpunpckhdq %ymm1, %ymm2, %ymm12    #  3     0x9   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckhdq %ymm12, %ymm12, %ymm14  #  4     0xd   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpckhpd %ymm14, %ymm12, %ymm1    #  5     0x12  5      OPC=vunpckhpd_ymm_ymm_ymm   
  retq                               #  6     0x17  1      OPC=retq                    
                                                                                       
.size target, .-target
