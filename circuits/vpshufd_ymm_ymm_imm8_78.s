  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vunpckhpd %ymm2, %ymm2, %ymm9    #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpcklqdq %ymm2, %ymm9, %ymm4  #  2     0x4   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vorpd %ymm4, %ymm4, %ymm9        #  3     0x8   4      OPC=vorpd_ymm_ymm_ymm        
  vpor %ymm9, %ymm4, %ymm1         #  4     0xc   5      OPC=vpor_ymm_ymm_ymm         
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
