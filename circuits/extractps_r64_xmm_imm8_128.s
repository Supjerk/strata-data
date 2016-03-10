  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm8  #  1     0    5      OPC=vpbroadcastq_ymm_xmm  
  movd %xmm8, %ebx           #  2     0x5  5      OPC=movd_r32_xmm          
  retq                       #  3     0xa  1      OPC=retq                  
                                                                            
.size target, .-target
