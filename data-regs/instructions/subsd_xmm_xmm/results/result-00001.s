  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vsubpd %xmm2, %xmm1, %xmm14  #  1     0    4      OPC=vsubpd_xmm_xmm_xmm  
  movsd %xmm14, %xmm1          #  2     0x4  5      OPC=movsd_xmm_xmm       
  retq                         #  3     0x9  1      OPC=retq                
                                                                            
.size target, .-target
