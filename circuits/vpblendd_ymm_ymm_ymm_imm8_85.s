  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovshdup %ymm2, %ymm2           #  1     0     4      OPC=vmovshdup_ymm_ymm        
  vpunpckldq %ymm2, %ymm3, %ymm6   #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm   
  vunpckhps %ymm2, %ymm3, %ymm4    #  3     0x8   4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpcklqdq %ymm4, %ymm6, %ymm1  #  4     0xc   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  5     0x10  1      OPC=retq                     
                                                                                      
.size target, .-target
