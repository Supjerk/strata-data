  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  callq .move_128_64_xmm3_xmm8_xmm9   #  1     0     5      OPC=callq_label         
  vmovss %xmm8, %xmm2, %xmm8          #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm2   #  3     0xa   5      OPC=callq_label         
  callq .move_256_128_ymm2_xmm8_xmm9  #  4     0xf   5      OPC=callq_label         
  callq .move_128_256_xmm8_xmm9_ymm1  #  5     0x14  5      OPC=callq_label         
  retq                                #  6     0x19  1      OPC=retq                
                                                                                    
.size target, .-target
