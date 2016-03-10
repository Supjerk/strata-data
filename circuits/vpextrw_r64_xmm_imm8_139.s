  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_128_064_xmm1_r8_r9     #  1     0     5      OPC=callq_label     
  callq .move_byte_6_of_ymm1_to_r8b  #  2     0x5   5      OPC=callq_label     
  callq .move_byte_7_of_ymm1_to_r9b  #  3     0xa   5      OPC=callq_label     
  movzwl %r8w, %ebx                  #  4     0xf   4      OPC=movzwl_r32_r16  
  callq .move_008_016_r8b_r9b_bx     #  5     0x13  5      OPC=callq_label     
  retq                               #  6     0x18  1      OPC=retq            
                                                                               
.size target, .-target
