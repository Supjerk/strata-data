  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vmovapd %xmm1, %xmm1             #  1     0    4      OPC=vmovapd_xmm_xmm          
  vfmsub231ss %xmm3, %xmm1, %xmm2  #  2     0x4  5      OPC=vfmsub231ss_xmm_xmm_xmm  
  movss %xmm2, %xmm1               #  3     0x9  4      OPC=movss_xmm_xmm            
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
