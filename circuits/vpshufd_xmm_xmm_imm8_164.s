  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmovsldup %xmm2, %xmm14      #  1     0    4      OPC=vmovsldup_xmm_xmm   
  vmovsd %xmm2, %xmm14, %xmm1  #  2     0x4  4      OPC=vmovsd_xmm_xmm_xmm  
  retq                         #  3     0x8  1      OPC=retq                
                                                                            
.size target, .-target
