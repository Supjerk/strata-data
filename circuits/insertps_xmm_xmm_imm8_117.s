  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label             
  punpckldq %xmm12, %xmm1              #  2     0x5   5      OPC=punpckldq_xmm_xmm       
  vpunpckhdq %xmm1, %xmm12, %xmm12     #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movdqa %xmm12, %xmm1                 #  4     0xe   5      OPC=movdqa_xmm_xmm          
  retq                                 #  5     0x13  1      OPC=retq                    
                                                                                         
.size target, .-target