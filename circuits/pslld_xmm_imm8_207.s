  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                 #  Line  RIP  Bytes  Opcode              
.target:               #        0    0      OPC=<label>         
  pxor %xmm7, %xmm7    #  1     0    4      OPC=pxor_xmm_xmm    
  haddpd %xmm7, %xmm1  #  2     0x4  4      OPC=haddpd_xmm_xmm  
  movsd %xmm7, %xmm1   #  3     0x8  4      OPC=movsd_xmm_xmm   
  retq                 #  4     0xc  1      OPC=retq            
                                                                
.size target, .-target
