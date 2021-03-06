  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode               
.target:                                #        0     0      OPC=<label>          
  callq .move_128_64_xmm3_xmm12_xmm13   #  1     0     5      OPC=callq_label      
  vmovdqu %xmm3, %xmm13                 #  2     0x5   4      OPC=vmovdqu_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  3     0x9   5      OPC=callq_label      
  movups %xmm2, %xmm1                   #  4     0xe   3      OPC=movups_xmm_xmm   
  retq                                  #  5     0x11  1      OPC=retq             
                                                                                   
.size target, .-target
