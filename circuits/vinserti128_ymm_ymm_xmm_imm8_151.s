  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                  
.target:                                #        0    0      OPC=<label>             
  vmaxps %xmm3, %xmm3, %xmm11           #  1     0    4      OPC=vmaxps_xmm_xmm_xmm  
  vmovaps %ymm2, %ymm10                 #  2     0x4  4      OPC=vmovaps_ymm_ymm     
  callq .move_128_256_xmm10_xmm11_ymm1  #  3     0x8  5      OPC=callq_label         
  retq                                  #  4     0xd  1      OPC=retq                
                                                                                     
.size target, .-target
