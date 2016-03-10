  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  vmovdqa %xmm2, %xmm10  #  1     0    4      OPC=vmovdqa_xmm_xmm  
  pandn %xmm10, %xmm1    #  2     0x4  5      OPC=pandn_xmm_xmm    
  retq                   #  3     0x9  1      OPC=retq             
                                                                   
.size target, .-target
