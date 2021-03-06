  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode               
.target:                                #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r8_r9        #  1     0     5      OPC=callq_label      
  vzeroall                              #  2     0x5   3      OPC=vzeroall         
  callq .move_064_128_r8_r9_xmm1        #  3     0x8   5      OPC=callq_label      
  callq .move_128_256_xmm8_xmm9_ymm3    #  4     0xd   5      OPC=callq_label      
  callq .move_128_64_xmm3_xmm10_xmm11   #  5     0x12  5      OPC=callq_label      
  vsqrtps %ymm1, %ymm10                 #  6     0x17  4      OPC=vsqrtps_ymm_ymm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  7     0x1b  5      OPC=callq_label      
  retq                                  #  8     0x20  1      OPC=retq             
                                                                                   
.size target, .-target
