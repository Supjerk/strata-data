  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                     
.target:                               #        0    0      OPC=<label>                
  vunpckhpd %xmm2, %xmm2, %xmm11       #  1     0    4      OPC=vunpckhpd_xmm_xmm_xmm  
  movshdup %xmm1, %xmm10               #  2     0x4  5      OPC=movshdup_xmm_xmm       
  callq .move_64_128_xmm10_xmm11_xmm1  #  3     0x9  5      OPC=callq_label            
  retq                                 #  4     0xe  1      OPC=retq                   
                                                                                       
.size target, .-target
