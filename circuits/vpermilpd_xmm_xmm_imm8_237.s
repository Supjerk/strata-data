  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r10_r11     #  1     0     5      OPC=callq_label            
  callq .move_064_128_r10_r11_xmm2     #  2     0x5   5      OPC=callq_label            
  callq .move_128_64_xmm2_xmm10_xmm11  #  3     0xa   5      OPC=callq_label            
  vunpcklpd %xmm2, %xmm11, %xmm1       #  4     0xf   4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                 #  5     0x13  1      OPC=retq                   
                                                                                        
.size target, .-target
