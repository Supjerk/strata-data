  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                 #  Line  RIP  Bytes  Opcode              
.target:               #        0    0      OPC=<label>         
  movaps %xmm2, %xmm1  #  1     0    3      OPC=movaps_xmm_xmm  
  retq                 #  2     0x3  1      OPC=retq            
                                                                
.size target, .-target
