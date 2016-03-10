  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode               
.target:                              #        0    0      OPC=<label>          
  callq .move_256_128_ymm3_xmm8_xmm9  #  1     0    5      OPC=callq_label      
  vmovupd %ymm2, %ymm1                #  2     0x5  4      OPC=vmovupd_ymm_ymm  
  movapd %xmm9, %xmm1                 #  3     0x9  5      OPC=movapd_xmm_xmm   
  retq                                #  4     0xe  1      OPC=retq             
                                                                                
.size target, .-target