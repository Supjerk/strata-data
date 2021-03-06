  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm12_xmm13             #  1     0     5      OPC=callq_label           
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  vpbroadcastq %xmm13, %xmm8                      #  3     0xa   5      OPC=vpbroadcastq_xmm_xmm  
  vmovsldup %xmm9, %xmm9                          #  4     0xf   5      OPC=vmovsldup_xmm_xmm     
  callq .move_64_128_xmm8_xmm9_xmm1               #  5     0x14  5      OPC=callq_label           
  retq                                            #  6     0x19  1      OPC=retq                  
                                                                                                  
.size target, .-target
