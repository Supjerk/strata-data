  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  movsldup %xmm9, %xmm13                          #  2     0x5   5      OPC=movsldup_xmm_xmm        
  vpunpckldq %xmm11, %xmm8, %xmm1                 #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm  
  unpcklpd %xmm13, %xmm1                          #  4     0xf   5      OPC=unpcklpd_xmm_xmm        
  retq                                            #  5     0x14  1      OPC=retq                    
                                                                                                    
.size target, .-target