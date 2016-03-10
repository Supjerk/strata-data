  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vmovss %xmm2, %xmm1, %xmm4                    #  2     0x5   4      OPC=vmovss_xmm_xmm_xmm       
  vpunpckhqdq %xmm1, %xmm2, %xmm6               #  3     0x9   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  4     0xd   5      OPC=callq_label              
  retq                                          #  5     0x12  1      OPC=retq                     
                                                                                                   
.size target, .-target