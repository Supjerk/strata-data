  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vpmovzxdq %xmm3, %xmm9                        #  1     0     5      OPC=vpmovzxdq_xmm_xmm   
  vpsubd %ymm9, %ymm3, %ymm1                    #  2     0x5   5      OPC=vpsubd_ymm_ymm_ymm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label         
  pmovsxbd %xmm4, %xmm1                         #  4     0xf   5      OPC=pmovsxbd_xmm_xmm    
  retq                                          #  5     0x14  1      OPC=retq                
                                                                                              
.size target, .-target
