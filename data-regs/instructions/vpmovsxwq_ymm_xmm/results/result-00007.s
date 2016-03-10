  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label        
  callq .move_064_128_r8_r9_xmm3  #  2     0x5   5      OPC=callq_label        
  pmovsxwd %xmm3, %xmm0           #  3     0xa   5      OPC=pmovsxwd_xmm_xmm   
  vpmovsxdq %xmm0, %ymm1          #  4     0xf   5      OPC=vpmovsxdq_ymm_xmm  
  retq                            #  5     0x14  1      OPC=retq               
                                                                               
.size target, .-target
