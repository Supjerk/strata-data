  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                 #  Line  RIP  Bytes  Opcode              
.target:               #        0    0      OPC=<label>         
  andnpd %xmm1, %xmm1  #  1     0    4      OPC=andnpd_xmm_xmm  
  sqrtps %xmm1, %xmm1  #  2     0x4  3      OPC=sqrtps_xmm_xmm  
  subpd %xmm1, %xmm1   #  3     0x7  4      OPC=subpd_xmm_xmm   
  retq                 #  4     0xb  1      OPC=retq            
                                                                
.size target, .-target
