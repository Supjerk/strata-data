  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpcklqdq %ymm3, %ymm2, %ymm3  #  1     0    4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vunpckhpd %ymm3, %ymm2, %ymm1    #  2     0x4  4      OPC=vunpckhpd_ymm_ymm_ymm    
  movsd %xmm3, %xmm1               #  3     0x8  4      OPC=movsd_xmm_xmm            
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
