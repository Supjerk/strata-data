  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode              
.target:                             #        0    0      OPC=<label>         
  xorpd %xmm1, %xmm1                 #  1     0    4      OPC=xorpd_xmm_xmm   
  callq .move_128_64_xmm1_xmm8_xmm9  #  2     0x4  5      OPC=callq_label     
  hsubpd %xmm8, %xmm1                #  3     0x9  5      OPC=hsubpd_xmm_xmm  
  retq                               #  4     0xe  1      OPC=retq            
                                                                              
.size target, .-target
