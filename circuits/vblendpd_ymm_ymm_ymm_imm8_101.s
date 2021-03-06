  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vmovups %xmm3, %xmm13            #  1     0    4      OPC=vmovups_xmm_xmm          
  vunpckhpd %ymm13, %ymm2, %ymm0   #  2     0x4  5      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpcklqdq %ymm0, %ymm3, %ymm1  #  3     0x9  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
