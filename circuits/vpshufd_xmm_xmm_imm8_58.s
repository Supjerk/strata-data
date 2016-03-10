  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vbroadcastss %xmm2, %ymm3                       #  1     0     5      OPC=vbroadcastss_ymm_xmm    
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label             
  vpbroadcastd %xmm10, %ymm12                     #  3     0xa   5      OPC=vpbroadcastd_ymm_xmm    
  vpunpckhdq %xmm3, %xmm12, %xmm1                 #  4     0xf   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpckhps %xmm1, %xmm2, %xmm1                   #  5     0x13  4      OPC=vunpckhps_xmm_xmm_xmm   
  retq                                            #  6     0x17  1      OPC=retq                    
                                                                                                    
.size target, .-target
