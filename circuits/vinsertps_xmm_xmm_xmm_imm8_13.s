  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vpmovzxwq %xmm2, %xmm1                        #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm      
  vunpcklps %xmm1, %xmm2, %xmm11                #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm  
  vunpckhps %xmm11, %xmm5, %xmm1                #  4     0xe   5      OPC=vunpckhps_xmm_xmm_xmm  
  retq                                          #  5     0x13  1      OPC=retq                   
                                                                                                 
.size target, .-target
