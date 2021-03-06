  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                      
.target:                           #        0    0      OPC=<label>                 
  vpunpckldq %ymm2, %ymm2, %ymm11  #  1     0    4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhps %ymm11, %ymm2, %ymm8   #  2     0x4  5      OPC=vunpckhps_ymm_ymm_ymm   
  vmovddup %ymm8, %ymm1            #  3     0x9  5      OPC=vmovddup_ymm_ymm        
  retq                             #  4     0xe  1      OPC=retq                    
                                                                                    
.size target, .-target
