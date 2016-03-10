  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode               
.target:                                #        0    0      OPC=<label>          
  callq .move_256_128_ymm1_xmm12_xmm13  #  1     0    5      OPC=callq_label      
  vmovups %xmm13, %xmm12                #  2     0x5  5      OPC=vmovups_xmm_xmm  
  vmovdqa %xmm12, %xmm1                 #  3     0xa  5      OPC=vmovdqa_xmm_xmm  
  retq                                  #  4     0xf  1      OPC=retq             
                                                                                  
.size target, .-target
