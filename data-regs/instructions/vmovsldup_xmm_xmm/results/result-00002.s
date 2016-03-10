  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vbroadcastss %xmm2, %xmm1            #  1     0     5      OPC=vbroadcastss_xmm_xmm     
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label              
  vbroadcastss %xmm11, %xmm7           #  3     0xa   5      OPC=vbroadcastss_xmm_xmm     
  vpunpcklqdq %xmm7, %xmm1, %xmm1      #  4     0xf   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                 #  5     0x13  1      OPC=retq                     
                                                                                          
.size target, .-target
