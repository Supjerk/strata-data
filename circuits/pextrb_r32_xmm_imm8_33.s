  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode            
.target:                             #        0    0      OPC=<label>       
  xorq %rbx, %rbx                    #  1     0    3      OPC=xorq_r64_r64  
  callq .move_byte_1_of_ymm1_to_r9b  #  2     0x3  5      OPC=callq_label   
  addb %r9b, %bl                     #  3     0x8  3      OPC=addb_r8_r8    
  retq                               #  4     0xb  1      OPC=retq          
                                                                            
.size target, .-target
