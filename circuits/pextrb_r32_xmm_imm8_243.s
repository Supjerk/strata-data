  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode            
.target:                             #        0    0      OPC=<label>       
  callq .move_byte_3_of_ymm1_to_r8b  #  1     0    5      OPC=callq_label   
  xorq %rbx, %rbx                    #  2     0x5  3      OPC=xorq_r64_r64  
  adcb %r8b, %bl                     #  3     0x8  3      OPC=adcb_r8_r8    
  retq                               #  4     0xb  1      OPC=retq          
                                                                            
.size target, .-target
