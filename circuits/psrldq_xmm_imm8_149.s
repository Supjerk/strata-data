  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                    
.target:                                #        0    0      OPC=<label>               
  vpbroadcastb %xmm1, %xmm3             #  1     0    5      OPC=vpbroadcastb_xmm_xmm  
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x5  5      OPC=callq_label           
  movdqa %xmm13, %xmm1                  #  3     0xa  5      OPC=movdqa_xmm_xmm        
  retq                                  #  4     0xf  1      OPC=retq                  
                                                                                       
.size target, .-target
