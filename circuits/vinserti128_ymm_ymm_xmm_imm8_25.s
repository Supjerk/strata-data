  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  callq .move_64_128_xmm8_xmm9_xmm1               #  2     0x5   5      OPC=callq_label          
  callq .move_128_64_xmm1_xmm10_xmm11             #  3     0xa   5      OPC=callq_label          
  vandnpd %xmm2, %xmm11, %xmm12                   #  4     0xf   4      OPC=vandnpd_xmm_xmm_xmm  
  movupd %xmm3, %xmm9                             #  5     0x13  5      OPC=movupd_xmm_xmm       
  callq .move_128_256_xmm8_xmm9_ymm2              #  6     0x18  5      OPC=callq_label          
  vorpd %ymm2, %ymm12, %ymm1                      #  7     0x1d  4      OPC=vorpd_ymm_ymm_ymm    
  retq                                            #  8     0x21  1      OPC=retq                 
                                                                                                 
.size target, .-target
