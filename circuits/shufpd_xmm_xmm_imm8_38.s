  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpckhpd %xmm1, %xmm2, %xmm0  #  1     0    4      OPC=vunpckhpd_xmm_xmm_xmm  
  movlhps %xmm0, %xmm1           #  2     0x4  3      OPC=movlhps_xmm_xmm        
  retq                           #  3     0x7  1      OPC=retq                   
                                                                                 
.size target, .-target
