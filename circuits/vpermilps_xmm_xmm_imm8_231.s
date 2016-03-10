  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r8_r9                #  1     0     5      OPC=callq_label      
  callq .move_064_128_r8_r9_xmm3                #  2     0x5   5      OPC=callq_label      
  vmovupd %xmm3, %xmm1                          #  3     0xa   4      OPC=vmovupd_xmm_xmm  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  4     0xe   5      OPC=callq_label      
  movss %xmm7, %xmm1                            #  5     0x13  4      OPC=movss_xmm_xmm    
  retq                                          #  6     0x17  1      OPC=retq             
                                                                                           
.size target, .-target
