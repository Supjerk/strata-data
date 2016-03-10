  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  xorps %xmm5, %xmm5     #  1     0    3      OPC=xorps_xmm_xmm     
  cvtps2pd %xmm5, %xmm1  #  2     0x3  3      OPC=cvtps2pd_xmm_xmm  
  retq                   #  3     0x6  1      OPC=retq              
                                                                    
.size target, .-target
