  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x6, %rbx                    #  1     0     10     OPC=movq_r64_imm64  
  negb %bl                           #  2     0xa   2      OPC=negb_r8         
  callq .move_byte_9_of_ymm1_to_r8b  #  3     0xc   5      OPC=callq_label     
  xchgb %r8b, %bl                    #  4     0x11  3      OPC=xchgb_r8_r8     
  retq                               #  5     0x14  1      OPC=retq            
                                                                               
.size target, .-target
