  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                    
.target:                          #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label           
  callq .move_064_128_r8_r9_xmm3  #  2     0x5   5      OPC=callq_label           
  vpbroadcastw %xmm3, %xmm8       #  3     0xa   5      OPC=vpbroadcastw_xmm_xmm  
  vpbroadcastb %xmm8, %xmm1       #  4     0xf   5      OPC=vpbroadcastb_xmm_xmm  
  vbroadcastss %xmm1, %ymm1       #  5     0x14  5      OPC=vbroadcastss_ymm_xmm  
  retq                            #  6     0x19  1      OPC=retq                  
                                                                                  
.size target, .-target
