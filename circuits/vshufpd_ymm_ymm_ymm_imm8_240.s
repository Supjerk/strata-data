  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpcklqdq %ymm3, %ymm2, %ymm1  #  1     0    4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  2     0x4  1      OPC=retq                     
                                                                                     
.size target, .-target
