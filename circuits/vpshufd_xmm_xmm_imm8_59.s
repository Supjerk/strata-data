  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  punpckldq %xmm11, %xmm11                        #  2     0x5   5      OPC=punpckldq_xmm_xmm       
  vpbroadcastd %xmm2, %xmm3                       #  3     0xa   5      OPC=vpbroadcastd_xmm_xmm    
  unpckhps %xmm3, %xmm2                           #  4     0xf   3      OPC=unpckhps_xmm_xmm        
  vpunpckldq %xmm2, %xmm11, %xmm1                 #  5     0x12  4      OPC=vpunpckldq_xmm_xmm_xmm  
  retq                                            #  6     0x16  1      OPC=retq                    
                                                                                                    
.size target, .-target