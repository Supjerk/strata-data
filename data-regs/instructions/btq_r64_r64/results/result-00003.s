  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  sarq $0x1, %rbx  #  1     0    3      OPC=sarq_r64_one  
  sarq %cl, %rbx   #  2     0x3  3      OPC=sarq_r64_cl   
  retq             #  3     0x6  1      OPC=retq          
                                                          
.size target, .-target
