  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vmovshdup %xmm1, %xmm5         #  1     0    4      OPC=vmovshdup_xmm_xmm      
  vunpckhps %ymm5, %ymm5, %ymm6  #  2     0x4  4      OPC=vunpckhps_ymm_ymm_ymm  
  vmovd %xmm6, %ebx              #  3     0x8  4      OPC=vmovd_r32_xmm          
  retq                           #  4     0xc  1      OPC=retq                   
                                                                                 
.size target, .-target
