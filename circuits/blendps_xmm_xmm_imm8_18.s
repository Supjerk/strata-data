  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label           
  vbroadcastss %xmm5, %ymm9                       #  3     0xa   5      OPC=vbroadcastss_ymm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xf   5      OPC=callq_label           
  retq                                            #  5     0x14  1      OPC=retq                  
                                                                                                  
.size target, .-target
