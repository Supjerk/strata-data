  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                      
.target:                           #        0    0      OPC=<label>                 
  vpunpckhdq %ymm2, %ymm2, %ymm10  #  1     0    4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovddup %ymm2, %ymm9            #  2     0x4  4      OPC=vmovddup_ymm_ymm        
  vunpckhpd %ymm10, %ymm9, %ymm1   #  3     0x8  5      OPC=vunpckhpd_ymm_ymm_ymm   
  retq                             #  4     0xd  1      OPC=retq                    
                                                                                    
.size target, .-target
