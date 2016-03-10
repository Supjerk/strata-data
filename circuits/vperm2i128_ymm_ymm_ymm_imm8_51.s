  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode               
.target:                                #        0    0      OPC=<label>          
  vmovups %ymm3, %ymm1                  #  1     0    4      OPC=vmovups_ymm_ymm  
  callq .move_256_128_ymm3_xmm10_xmm11  #  2     0x4  5      OPC=callq_label      
  movupd %xmm11, %xmm1                  #  3     0x9  5      OPC=movupd_xmm_xmm   
  retq                                  #  4     0xe  1      OPC=retq             
                                                                                  
.size target, .-target
