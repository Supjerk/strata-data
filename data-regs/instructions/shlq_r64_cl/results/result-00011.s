  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP  Bytes  Opcode           
.target:                            #        0    0      OPC=<label>      
  callq .move_byte_3_of_rbx_to_r9b  #  1     0    5      OPC=callq_label  
  callq .move_r9b_to_byte_3_of_rbx  #  2     0x5  5      OPC=callq_label  
  salq %cl, %rbx                    #  3     0xa  3      OPC=salq_r64_cl  
  retq                              #  4     0xd  1      OPC=retq         
                                                                          
.size target, .-target
