  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vunpckhps %ymm2, %ymm2, %ymm3     #  1     0    4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpcklqdq %ymm2, %ymm3, %ymm13  #  2     0x4  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vmovsldup %ymm13, %ymm1           #  3     0x8  5      OPC=vmovsldup_ymm_ymm        
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
