  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm3                          #  1     0     5      OPC=vpmovzxwd_ymm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  vmovddup %xmm11, %xmm5                          #  3     0xa   5      OPC=vmovddup_xmm_xmm   
  vmovd %xmm5, %ebx                               #  4     0xf   4      OPC=vmovd_r32_xmm      
  retq                                            #  5     0x13  1      OPC=retq               
                                                                                               
.size target, .-target
