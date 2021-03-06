  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x20, %rdi                   #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_1_of_ymm1_to_r8b  #  2     0xa   5      OPC=callq_label     
  testb %dil, %r8b                   #  3     0xf   3      OPC=testb_r8_r8     
  callq .move_byte_6_of_ymm1_to_r8b  #  4     0x12  5      OPC=callq_label     
  callq .read_zf_into_rbx            #  5     0x17  5      OPC=callq_label     
  callq .move_byte_7_of_ymm1_to_r9b  #  6     0x1c  5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_bx     #  7     0x21  5      OPC=callq_label     
  retq                               #  8     0x26  1      OPC=retq            
                                                                               
.size target, .-target
