  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  vmovups %ymm2, %ymm1  #  1     0    4      OPC=vmovups_ymm_ymm  
  retq                  #  2     0x4  1      OPC=retq             
                                                                  
.size target, .-target
