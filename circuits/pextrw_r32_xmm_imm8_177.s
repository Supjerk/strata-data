  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm2                          #  1     0     5      OPC=vpmovzxwd_ymm_xmm  
  vpmovzxdq %xmm2, %xmm1                          #  2     0x5   5      OPC=vpmovzxdq_xmm_xmm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label        
  vmovq %xmm10, %rbx                              #  4     0xf   5      OPC=vmovq_r64_xmm      
  retq                                            #  5     0x14  1      OPC=retq               
                                                                                               
.size target, .-target
