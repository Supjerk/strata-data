  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovzxdq %xmm1, %ymm0  #  1     0    5      OPC=vpmovzxdq_ymm_xmm  
  movd %xmm0, %ebx        #  2     0x5  4      OPC=movd_r32_xmm       
  retq                    #  3     0x9  1      OPC=retq               
                                                                      
.size target, .-target
