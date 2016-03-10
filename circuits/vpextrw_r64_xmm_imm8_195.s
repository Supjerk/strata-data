  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  xorl %ebx, %ebx                    #  1     0     2      OPC=xorl_r32_r32    
  callq .move_byte_7_of_ymm1_to_r9b  #  2     0x2   5      OPC=callq_label     
  callq .move_byte_6_of_ymm1_to_r8b  #  3     0x7   5      OPC=callq_label     
  cmovsl %ebx, %ebx                  #  4     0xc   3      OPC=cmovsl_r32_r32  
  callq .move_008_016_r8b_r9b_bx     #  5     0xf   5      OPC=callq_label     
  retq                               #  6     0x14  1      OPC=retq            
                                                                               
.size target, .-target
