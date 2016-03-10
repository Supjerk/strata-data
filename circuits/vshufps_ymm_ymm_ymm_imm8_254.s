  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vmovshdup %ymm3, %ymm11           #  1     0    4      OPC=vmovshdup_ymm_ymm        
  vpunpckhqdq %ymm11, %ymm2, %ymm1  #  2     0x4  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  3     0x9  1      OPC=retq                     
                                                                                      
.size target, .-target
