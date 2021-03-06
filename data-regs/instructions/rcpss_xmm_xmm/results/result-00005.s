  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vrcpps %xmm2, %xmm4                           #  2     0x5   4      OPC=vrcpps_xmm_xmm      
  vmaxpd %ymm4, %ymm4, %ymm4                    #  3     0x9   4      OPC=vmaxpd_ymm_ymm_ymm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  4     0xd   5      OPC=callq_label         
  retq                                          #  5     0x12  1      OPC=retq                
                                                                                              
.size target, .-target
