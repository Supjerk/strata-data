  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  movups %xmm2, %xmm8              #  1     0    4      OPC=movups_xmm_xmm           
  vpunpckhqdq %ymm2, %ymm2, %ymm1  #  2     0x4  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  unpcklpd %xmm8, %xmm1            #  3     0x8  5      OPC=unpcklpd_xmm_xmm         
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target