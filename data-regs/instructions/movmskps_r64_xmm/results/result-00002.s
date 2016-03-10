  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovsxwd %xmm1, %ymm6  #  1     0    5      OPC=vpmovsxwd_ymm_xmm  
  vmovmskpd %ymm6, %ebx   #  2     0x5  4      OPC=vmovmskpd_r32_ymm  
  retq                    #  3     0x9  1      OPC=retq               
                                                                      
.size target, .-target
