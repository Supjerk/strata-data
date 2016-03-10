  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label         
  vmaxpd %ymm2, %ymm2, %ymm10     #  2     0x5   4      OPC=vmaxpd_ymm_ymm_ymm  
  vmaxpd %ymm10, %ymm10, %ymm1    #  3     0x9   5      OPC=vmaxpd_ymm_ymm_ymm  
  callq .move_064_128_r8_r9_xmm1  #  4     0xe   5      OPC=callq_label         
  retq                            #  5     0x13  1      OPC=retq                
                                                                                
.size target, .-target
