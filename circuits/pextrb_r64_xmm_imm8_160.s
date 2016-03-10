  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                    
.target:                          #        0    0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm2       #  1     0    5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_128_064_xmm2_r8_r9  #  2     0x5  5      OPC=callq_label           
  movzbl %r9b, %ebx               #  3     0xa  4      OPC=movzbl_r32_r8         
  retq                            #  4     0xe  1      OPC=retq                  
                                                                                 
.size target, .-target
