  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label         
  vpmovzxbq %xmm8, %xmm5             #  2     0x5   5      OPC=vpmovzxbq_xmm_xmm   
  unpckhpd %xmm5, %xmm1              #  3     0xa   4      OPC=unpckhpd_xmm_xmm    
  punpcklqdq %xmm2, %xmm1            #  4     0xe   4      OPC=punpcklqdq_xmm_xmm  
  retq                               #  5     0x12  1      OPC=retq                
                                                                                   
.size target, .-target
