  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode            
.target:                             #        0    0      OPC=<label>       
  xorq %rbx, %rbx                    #  1     0    3      OPC=xorq_r64_r64  
  callq .move_byte_1_of_ymm1_to_r8b  #  2     0x3  5      OPC=callq_label   
  rclb $0x1, %bl                     #  3     0x8  2      OPC=rclb_r8_one   
  addb %r8b, %bl                     #  4     0xa  3      OPC=addb_r8_r8    
  retq                               #  5     0xd  1      OPC=retq          
                                                                            
.size target, .-target
