  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  andps %xmm1, %xmm1  #  1     0    3      OPC=andps_xmm_xmm  
  pandn %xmm1, %xmm1  #  2     0x3  4      OPC=pandn_xmm_xmm  
  retq                #  3     0x7  1      OPC=retq           
                                                              
.size target, .-target
