  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                     
.target:                           #        0    0      OPC=<label>                
  vmovsldup %xmm2, %xmm11          #  1     0    4      OPC=vmovsldup_xmm_xmm      
  vunpckhps %xmm3, %xmm11, %xmm10  #  2     0x4  4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovsd %xmm3, %xmm10, %xmm1      #  3     0x8  4      OPC=vmovsd_xmm_xmm_xmm     
  retq                             #  4     0xc  1      OPC=retq                   
                                                                                   
.size target, .-target
