  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r10_r11      #  1     0     5      OPC=callq_label        
  vzeroall                              #  2     0x5   3      OPC=vzeroall           
  callq .move_128_64_xmm2_xmm10_xmm11   #  3     0x8   5      OPC=callq_label        
  callq .move_064_128_r10_r11_xmm3      #  4     0xd   5      OPC=callq_label        
  vcvtdq2ps %ymm3, %ymm10               #  5     0x12  4      OPC=vcvtdq2ps_ymm_ymm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  6     0x16  5      OPC=callq_label        
  retq                                  #  7     0x1b  1      OPC=retq               
                                                                                     
.size target, .-target
