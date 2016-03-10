  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  maxps %xmm2, %xmm2  #  1     0    3      OPC=maxps_xmm_xmm  
  xorps %xmm2, %xmm1  #  2     0x3  3      OPC=xorps_xmm_xmm  
  retq                #  3     0x6  1      OPC=retq           
                                                              
.size target, .-target