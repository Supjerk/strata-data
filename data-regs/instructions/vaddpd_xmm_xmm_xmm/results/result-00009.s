  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmovaps %xmm2, %xmm12        #  1     0    4      OPC=vmovaps_xmm_xmm     
  vmovupd %xmm3, %xmm1         #  2     0x4  4      OPC=vmovupd_xmm_xmm     
  vaddpd %ymm1, %ymm12, %ymm1  #  3     0x8  4      OPC=vaddpd_ymm_ymm_ymm  
  retq                         #  4     0xc  1      OPC=retq                
                                                                            
.size target, .-target
