  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  pand %xmm2, %xmm3           #  1     0    4      OPC=pand_xmm_xmm        
  vandps %ymm2, %ymm3, %ymm1  #  2     0x4  4      OPC=vandps_ymm_ymm_ymm  
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target
