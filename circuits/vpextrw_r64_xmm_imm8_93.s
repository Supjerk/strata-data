  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  movq $0x20, %rcx                    #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_10_of_ymm1_to_r8b  #  2     0xa   5      OPC=callq_label     
  movslq %ecx, %rbx                   #  3     0xf   3      OPC=movslq_r64_r32  
  callq .move_byte_11_of_ymm1_to_r9b  #  4     0x12  5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_bx      #  5     0x17  5      OPC=callq_label     
  retq                                #  6     0x1c  1      OPC=retq            
                                                                                
.size target, .-target
