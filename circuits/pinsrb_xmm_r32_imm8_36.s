  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode            
.target:                             #        0    0      OPC=<label>       
  movl %ebx, %r8d                    #  1     0    3      OPC=movl_r32_r32  
  orb %bl, %r8b                      #  2     0x3  3      OPC=orb_r8_r8     
  callq .move_r8b_to_byte_4_of_ymm1  #  3     0x6  5      OPC=callq_label   
  retq                               #  4     0xb  1      OPC=retq          
                                                                            
.size target, .-target
