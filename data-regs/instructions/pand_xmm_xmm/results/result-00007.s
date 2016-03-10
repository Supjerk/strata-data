  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vandnps %xmm1, %xmm2, %xmm6  #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  pxor %xmm6, %xmm1            #  2     0x4  4      OPC=pxor_xmm_xmm         
  retq                         #  3     0x8  1      OPC=retq                 
                                                                             
.size target, .-target
