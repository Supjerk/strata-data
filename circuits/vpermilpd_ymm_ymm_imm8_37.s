  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vandps %ymm2, %ymm2, %ymm0      #  1     0    4      OPC=vandps_ymm_ymm_ymm     
  vunpckhpd %ymm0, %ymm2, %ymm12  #  2     0x4  4      OPC=vunpckhpd_ymm_ymm_ymm  
  vunpcklpd %ymm2, %ymm12, %ymm1  #  3     0x8  4      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                            #  4     0xc  1      OPC=retq                   
                                                                                  
.size target, .-target
