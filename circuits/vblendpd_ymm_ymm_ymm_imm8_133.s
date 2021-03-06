  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vmovddup %ymm3, %ymm1            #  1     0    4      OPC=vmovddup_ymm_ymm         
  minpd %xmm2, %xmm2               #  2     0x4  4      OPC=minpd_xmm_xmm            
  vpunpckhqdq %ymm2, %ymm1, %ymm1  #  3     0x8  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
