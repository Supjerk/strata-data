  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpbroadcastq %xmm11, %ymm1            #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm     
  vpunpckhqdq %ymm1, %ymm2, %ymm1       #  3     0xa   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movups %xmm10, %xmm1                  #  4     0xe   4      OPC=movups_xmm_xmm           
  retq                                  #  5     0x12  1      OPC=retq                     
                                                                                           
.size target, .-target
