  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovd %ebx, %xmm4                #  1     0     4      OPC=vmovd_xmm_r32           
  vpbroadcastd %xmm4, %xmm14       #  2     0x4   5      OPC=vpbroadcastd_xmm_xmm    
  vpunpckhdq %xmm2, %xmm14, %xmm1  #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movsd %xmm2, %xmm1               #  4     0xd   4      OPC=movsd_xmm_xmm           
  retq                             #  5     0x11  1      OPC=retq                    
                                                                                     
.size target, .-target
