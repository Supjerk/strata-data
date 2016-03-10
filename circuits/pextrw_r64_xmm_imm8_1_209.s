  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vpmovzxwq %xmm1, %ymm3       #  1     0     5      OPC=vpmovzxwq_ymm_xmm   
  vaddpd %xmm3, %xmm1, %xmm14  #  2     0x5   4      OPC=vaddpd_xmm_xmm_xmm  
  unpckhpd %xmm14, %xmm3       #  3     0x9   5      OPC=unpckhpd_xmm_xmm    
  movq %xmm3, %rbx             #  4     0xe   5      OPC=movq_r64_xmm        
  retq                         #  5     0x13  1      OPC=retq                
                                                                             
.size target, .-target
