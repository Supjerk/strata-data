  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmaxss %xmm2, %xmm3, %xmm1  #  1     0    4      OPC=vmaxss_xmm_xmm_xmm  
  vmovss %xmm2, %xmm1, %xmm1  #  2     0x4  4      OPC=vmovss_xmm_xmm_xmm  
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target
