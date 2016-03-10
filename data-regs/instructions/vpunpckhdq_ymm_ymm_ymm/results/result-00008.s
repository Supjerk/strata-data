  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vcvtdq2ps %xmm3, %xmm1          #  1     0    4      OPC=vcvtdq2ps_xmm_xmm      
  vunpckhpd %ymm3, %ymm1, %ymm14  #  2     0x4  4      OPC=vunpckhpd_ymm_ymm_ymm  
  vunpckhps %ymm14, %ymm2, %ymm1  #  3     0x8  5      OPC=vunpckhps_ymm_ymm_ymm  
  retq                            #  4     0xd  1      OPC=retq                   
                                                                                  
.size target, .-target
