  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vmovddup %xmm12, %xmm8               #  2     0x5   5      OPC=vmovddup_xmm_xmm       
  movdqa %xmm8, %xmm14                 #  3     0xa   5      OPC=movdqa_xmm_xmm         
  vunpckhpd %xmm14, %xmm2, %xmm1       #  4     0xf   5      OPC=vunpckhpd_xmm_xmm_xmm  
  retq                                 #  5     0x14  1      OPC=retq                   
                                                                                        
.size target, .-target
