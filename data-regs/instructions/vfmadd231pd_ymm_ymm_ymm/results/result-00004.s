  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vfmadd213pd %ymm1, %ymm2, %ymm3  #  1     0    5      OPC=vfmadd213pd_ymm_ymm_ymm  
  vmovdqu %ymm3, %ymm6             #  2     0x5  4      OPC=vmovdqu_ymm_ymm          
  vmaxps %ymm3, %ymm6, %ymm1       #  3     0x9  4      OPC=vmaxps_ymm_ymm_ymm       
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
