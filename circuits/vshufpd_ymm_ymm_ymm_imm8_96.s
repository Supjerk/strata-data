  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vunpcklpd %ymm3, %ymm2, %ymm10  #  1     0    4      OPC=vunpcklpd_ymm_ymm_ymm  
  vpor %ymm10, %ymm10, %ymm1      #  2     0x4  5      OPC=vpor_ymm_ymm_ymm       
  retq                            #  3     0x9  1      OPC=retq                   
                                                                                  
.size target, .-target
