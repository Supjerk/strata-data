  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vmovddup %ymm2, %ymm1                         #  1     0     4      OPC=vmovddup_ymm_ymm         
  vpunpckhqdq %ymm1, %ymm2, %ymm1               #  2     0x4   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0x8   5      OPC=callq_label              
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  4     0xd   5      OPC=callq_label              
  retq                                          #  5     0x12  1      OPC=retq                     
                                                                                                   
.size target, .-target
