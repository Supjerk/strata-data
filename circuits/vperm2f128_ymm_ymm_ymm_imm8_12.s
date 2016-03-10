  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode               
.target:                                #        0     0      OPC=<label>          
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  vmovupd %xmm10, %xmm11                #  2     0x5   5      OPC=vmovupd_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  3     0xa   5      OPC=callq_label      
  andnpd %xmm2, %xmm1                   #  4     0xf   4      OPC=andnpd_xmm_xmm   
  retq                                  #  5     0x13  1      OPC=retq             
                                                                                   
.size target, .-target
