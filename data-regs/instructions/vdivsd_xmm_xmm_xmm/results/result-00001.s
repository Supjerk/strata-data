  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vorpd %xmm3, %xmm3, %xmm3  #  1     0    4      OPC=vorpd_xmm_xmm_xmm  
  divsd %xmm3, %xmm2         #  2     0x4  4      OPC=divsd_xmm_xmm      
  vmovdqu %xmm2, %xmm1       #  3     0x8  4      OPC=vmovdqu_xmm_xmm    
  retq                       #  4     0xc  1      OPC=retq               
                                                                         
.size target, .-target
