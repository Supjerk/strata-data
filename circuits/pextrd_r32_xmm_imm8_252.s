  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovsxdq %xmm1, %xmm6  #  1     0    5      OPC=vpmovsxdq_xmm_xmm  
  vmovd %xmm6, %ebx       #  2     0x5  4      OPC=vmovd_r32_xmm      
  retq                    #  3     0x9  1      OPC=retq               
                                                                      
.size target, .-target
