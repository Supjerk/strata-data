  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode               
.target:                                #        0    0      OPC=<label>          
  vmovupd %xmm2, %xmm10                 #  1     0    4      OPC=vmovupd_xmm_xmm  
  movapd %xmm3, %xmm11                  #  2     0x4  5      OPC=movapd_xmm_xmm   
  callq .move_128_256_xmm10_xmm11_ymm1  #  3     0x9  5      OPC=callq_label      
  retq                                  #  4     0xe  1      OPC=retq             
                                                                                  
.size target, .-target
