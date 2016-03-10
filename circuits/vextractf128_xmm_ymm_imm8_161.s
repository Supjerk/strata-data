  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                  
.target:                                #        0    0      OPC=<label>             
  callq .move_256_128_ymm1_xmm12_xmm13  #  1     0    5      OPC=callq_label         
  vcvttpd2dq %xmm1, %xmm1               #  2     0x5  4      OPC=vcvttpd2dq_xmm_xmm  
  movups %xmm13, %xmm1                  #  3     0x9  4      OPC=movups_xmm_xmm      
  retq                                  #  4     0xd  1      OPC=retq                
                                                                                     
.size target, .-target
