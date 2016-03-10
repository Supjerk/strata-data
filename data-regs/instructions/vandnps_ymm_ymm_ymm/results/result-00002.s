  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vmovdqu %ymm2, %ymm14         #  1     0    4      OPC=vmovdqu_ymm_ymm      
  vandnpd %ymm3, %ymm14, %ymm2  #  2     0x4  4      OPC=vandnpd_ymm_ymm_ymm  
  vmovapd %ymm2, %ymm1          #  3     0x8  4      OPC=vmovapd_ymm_ymm      
  retq                          #  4     0xc  1      OPC=retq                 
                                                                              
.size target, .-target