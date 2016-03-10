  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vmovlhps %xmm2, %xmm1, %xmm0  #  1     0    4      OPC=vmovlhps_xmm_xmm_xmm  
  movhlps %xmm0, %xmm1          #  2     0x4  3      OPC=movhlps_xmm_xmm       
  retq                          #  3     0x7  1      OPC=retq                  
                                                                               
.size target, .-target
