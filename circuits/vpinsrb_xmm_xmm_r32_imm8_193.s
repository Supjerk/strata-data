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
  movzbq %bl, %rcx                   #  4     0xd   4      OPC=movzbq_r64_r8  
  xchgb %cl, %r8b                    #  5     0x11  3      OPC=xchgb_r8_r8    
  callq .move_r8b_to_byte_1_of_ymm1  #  6     0x14  5      OPC=callq_label    
  retq                               #  7     0x19  1      OPC=retq           
                                                                              
.size target, .-target
