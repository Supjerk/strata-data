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
  callq .move_016_008_bx_r8b_r9b     #  4     0xd   5      OPC=callq_label  
  callq .move_r8b_to_byte_4_of_ymm1  #  5     0x12  5      OPC=callq_label  
  callq .move_r9b_to_byte_5_of_ymm1  #  6     0x17  5      OPC=callq_label  
  callq .move_byte_2_of_rbx_to_r8b   #  7     0x1c  5      OPC=callq_label  
  callq .move_r8b_to_byte_6_of_ymm1  #  8     0x21  5      OPC=callq_label  
  callq .move_byte_3_of_rbx_to_r9b   #  9     0x26  5      OPC=callq_label  
  callq .move_r9b_to_byte_7_of_ymm1  #  10    0x2b  5      OPC=callq_label  
  retq                               #  11    0x30  1      OPC=retq         
                                                                            
.size target, .-target
