  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode                 
.target:                 #        0    0      OPC=<label>            
  vsqrtpd %xmm1, %xmm8   #  1     0    4      OPC=vsqrtpd_xmm_xmm    
  vmovmskpd %xmm8, %ebx  #  2     0x4  5      OPC=vmovmskpd_r32_xmm  
  retq                   #  3     0x9  1      OPC=retq               
                                                                     
.size target, .-target
