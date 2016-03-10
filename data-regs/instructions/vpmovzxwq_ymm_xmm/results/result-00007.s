  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  vpmovzxwd %xmm2, %xmm1              #  1     0     5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_byte_2_of_ymm1_to_r9b   #  2     0x5   5      OPC=callq_label        
  callq .move_r9b_to_byte_18_of_ymm1  #  3     0xa   5      OPC=callq_label        
  vpmovzxdq %xmm1, %ymm1              #  4     0xf   5      OPC=vpmovzxdq_ymm_xmm  
  retq                                #  5     0x14  1      OPC=retq               
                                                                                   
.size target, .-target
