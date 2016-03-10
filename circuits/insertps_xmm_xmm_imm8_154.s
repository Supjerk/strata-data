  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                
.target:                                          #        0    0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label       
  vmovddup %xmm10, %xmm9                          #  2     0x5  5      OPC=vmovddup_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  3     0xa  5      OPC=callq_label       
  retq                                            #  4     0xf  1      OPC=retq              
                                                                                             
.size target, .-target
