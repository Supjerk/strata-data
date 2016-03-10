  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                    
.target:                         #        0    0      OPC=<label>               
  vpbroadcastq %xmm1, %xmm10     #  1     0    5      OPC=vpbroadcastq_xmm_xmm  
  vandnpd %ymm10, %ymm10, %ymm2  #  2     0x5  5      OPC=vandnpd_ymm_ymm_ymm   
  movddup %xmm2, %xmm1           #  3     0xa  4      OPC=movddup_xmm_xmm       
  retq                           #  4     0xe  1      OPC=retq                  
                                                                                
.size target, .-target
