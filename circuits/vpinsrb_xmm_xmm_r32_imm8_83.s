  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .move_128_064_xmm2_r8_r9     #  1     0     5      OPC=callq_label   
  vzeroall                           #  2     0x5   3      OPC=vzeroall      
  callq .move_064_128_r8_r9_xmm1     #  3     0x8   5      OPC=callq_label   
  movw %bx, %r9w                     #  4     0xd   4      OPC=movw_r16_r16  
  callq .move_r9b_to_byte_3_of_ymm1  #  5     0x11  5      OPC=callq_label   
  retq                               #  6     0x16  1      OPC=retq          
                                                                             
.size target, .-target
