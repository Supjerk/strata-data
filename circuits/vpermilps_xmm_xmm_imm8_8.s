  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r8_r9       #  1     0     5      OPC=callq_label            
  vzeroall                             #  2     0x5   3      OPC=vzeroall               
  callq .move_064_128_r8_r9_xmm3       #  3     0x8   5      OPC=callq_label            
  vpbroadcastd %xmm3, %xmm13           #  4     0xd   5      OPC=vpbroadcastd_xmm_xmm   
  vunpckhps %xmm3, %xmm13, %xmm12      #  5     0x12  4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  6     0x16  5      OPC=callq_label            
  retq                                 #  7     0x1b  1      OPC=retq                   
                                                                                        
.size target, .-target
