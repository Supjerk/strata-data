  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                                      #  Line  RIP  Bytes  Opcode                    
.target:                                    #        0    0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm1                 #  1     0    5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x5  5      OPC=callq_label           
  callq .move_032_064_r8d_r9d_rbx           #  3     0xa  5      OPC=callq_label           
  retq                                      #  4     0xf  1      OPC=retq                  
                                                                                           
.size target, .-target
