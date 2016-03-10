  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  vsqrtps %xmm2, %xmm2  #  1     0    4      OPC=vsqrtps_xmm_xmm  
  movdqu %xmm1, %xmm1   #  2     0x4  4      OPC=movdqu_xmm_xmm   
  movss %xmm2, %xmm1    #  3     0x8  4      OPC=movss_xmm_xmm    
  retq                  #  4     0xc  1      OPC=retq             
                                                                  
.size target, .-target
