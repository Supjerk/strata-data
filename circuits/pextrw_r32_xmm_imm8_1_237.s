  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  vpmovzxwq %xmm13, %ymm6              #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm     
  vmovhlps %xmm6, %xmm12, %xmm7        #  3     0xa   4      OPC=vmovhlps_xmm_xmm_xmm  
  movd %xmm7, %ebx                     #  4     0xe   4      OPC=movd_r32_xmm          
  retq                                 #  5     0x12  1      OPC=retq                  
                                                                                       
.size target, .-target