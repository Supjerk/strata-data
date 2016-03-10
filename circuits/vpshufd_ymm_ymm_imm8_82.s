  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpunpcklqdq %ymm2, %ymm2, %ymm10  #  1     0     4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpunpckhdq %ymm10, %ymm2, %ymm4   #  2     0x4   5      OPC=vpunpckhdq_ymm_ymm_ymm   
  vmovshdup %ymm10, %ymm1           #  3     0x9   5      OPC=vmovshdup_ymm_ymm        
  vunpcklpd %ymm1, %ymm4, %ymm1     #  4     0xe   4      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                              #  5     0x12  1      OPC=retq                     
                                                                                       
.size target, .-target