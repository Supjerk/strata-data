  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vminss %xmm2, %xmm2, %xmm1         #  1     0     4      OPC=vminss_xmm_xmm_xmm  
  callq .move_016_008_bx_r8b_r9b     #  2     0x4   5      OPC=callq_label         
  callq .move_r8b_to_byte_0_of_ymm1  #  3     0x9   5      OPC=callq_label         
  callq .move_r9b_to_byte_1_of_ymm1  #  4     0xe   5      OPC=callq_label         
  retq                               #  5     0x13  1      OPC=retq                
                                                                                   
.size target, .-target
