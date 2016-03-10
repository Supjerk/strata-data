  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  pxor %xmm3, %xmm3      #  1     0    4      OPC=pxor_xmm_xmm      
  cvtdq2pd %xmm3, %xmm8  #  2     0x4  5      OPC=cvtdq2pd_xmm_xmm  
  movddup %xmm8, %xmm1   #  3     0x9  5      OPC=movddup_xmm_xmm   
  retq                   #  4     0xe  1      OPC=retq              
                                                                    
.size target, .-target