  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vrcpss %xmm1, %xmm1, %xmm9   #  1     0    4      OPC=vrcpss_xmm_xmm_xmm   
  vandnpd %xmm9, %xmm9, %xmm2  #  2     0x4  5      OPC=vandnpd_xmm_xmm_xmm  
  movddup %xmm2, %xmm1         #  3     0x9  4      OPC=movddup_xmm_xmm      
  retq                         #  4     0xd  1      OPC=retq                 
                                                                             
.size target, .-target
