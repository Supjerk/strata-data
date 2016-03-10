  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                    
.target:                               #        0    0      OPC=<label>               
  vpbroadcastq %xmm3, %ymm5            #  1     0    5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x5  5      OPC=callq_label           
  vmovsd %xmm13, %xmm5, %xmm1          #  3     0xa  5      OPC=vmovsd_xmm_xmm_xmm    
  retq                                 #  4     0xf  1      OPC=retq                  
                                                                                      
.size target, .-target
