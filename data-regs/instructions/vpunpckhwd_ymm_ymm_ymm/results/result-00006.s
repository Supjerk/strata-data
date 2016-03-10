  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm3, %ymm12  #  1     0    4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpckhpd %ymm3, %ymm2, %ymm3     #  2     0x4  4      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpcklwd %ymm12, %ymm3, %ymm1   #  3     0x8  5      OPC=vpunpcklwd_ymm_ymm_ymm   
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
