  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vcvtps2pd %xmm2, %xmm6  #  1     0    4      OPC=vcvtps2pd_xmm_xmm  
  movdqa %xmm6, %xmm13    #  2     0x4  5      OPC=movdqa_xmm_xmm     
  movdqu %xmm13, %xmm1    #  3     0x9  5      OPC=movdqu_xmm_xmm     
  retq                    #  4     0xe  1      OPC=retq               
                                                                      
.size target, .-target
