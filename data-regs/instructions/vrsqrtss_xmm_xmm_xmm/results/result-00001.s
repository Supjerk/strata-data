  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_128_064_xmm3_r12_r13  #  1     0     5      OPC=callq_label      
  callq .move_128_064_xmm2_r8_r9    #  2     0x5   5      OPC=callq_label      
  vzeroall                          #  3     0xa   3      OPC=vzeroall         
  callq .move_064_128_r8_r9_xmm1    #  4     0xd   5      OPC=callq_label      
  callq .move_064_128_r12_r13_xmm3  #  5     0x12  5      OPC=callq_label      
  rsqrtss %xmm3, %xmm1              #  6     0x17  4      OPC=rsqrtss_xmm_xmm  
  retq                              #  7     0x1b  1      OPC=retq             
                                                                               
.size target, .-target
