  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm0  #  1     0    5      OPC=vpbroadcastq_ymm_xmm  
  movq %xmm0, %rbx           #  2     0x5  5      OPC=movq_r64_xmm          
  retq                       #  3     0xa  1      OPC=retq                  
                                                                            
.size target, .-target
