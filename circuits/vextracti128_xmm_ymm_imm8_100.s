  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vorps %ymm1, %ymm1, %ymm2   #  1     0    4      OPC=vorps_ymm_ymm_ymm   
  vmaxss %xmm2, %xmm2, %xmm1  #  2     0x4  4      OPC=vmaxss_xmm_xmm_xmm  
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target
