  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP  Bytes  Opcode             
.target:                             #        0    0      OPC=<label>        
  movzbq %cl, %rbx                   #  1     0    4      OPC=movzbq_r64_r8  
  callq .move_032_016_ebx_r10w_r11w  #  2     0x4  5      OPC=callq_label    
  callq .move_008_016_r10b_r11b_bx   #  3     0x9  5      OPC=callq_label    
  retq                               #  4     0xe  1      OPC=retq           
                                                                             
.size target, .-target
