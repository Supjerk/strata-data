  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                
.target:                               #        0    0      OPC=<label>           
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0    5      OPC=callq_label       
  movshdup %xmm10, %xmm1               #  2     0x5  5      OPC=movshdup_xmm_xmm  
  unpckhpd %xmm11, %xmm1               #  3     0xa  5      OPC=unpckhpd_xmm_xmm  
  retq                                 #  4     0xf  1      OPC=retq              
                                                                                  
.size target, .-target
