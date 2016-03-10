  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  movhlps %xmm2, %xmm2  #  1     0    3      OPC=movhlps_xmm_xmm  
  movlhps %xmm2, %xmm1  #  2     0x3  3      OPC=movlhps_xmm_xmm  
  retq                  #  3     0x6  1      OPC=retq             
                                                                  
.size target, .-target
