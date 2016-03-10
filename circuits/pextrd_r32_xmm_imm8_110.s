  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vaddpd %xmm1, %xmm1, %xmm5       #  1     0    4      OPC=vaddpd_xmm_xmm_xmm       
  vpunpckhqdq %xmm5, %xmm1, %xmm5  #  2     0x4  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovd %xmm5, %ebx                #  3     0x8  4      OPC=vmovd_r32_xmm            
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
