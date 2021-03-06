  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  xorw %ax, %bx    #  2     0x3  3      OPC=xorw_r16_r16  
  clc              #  3     0x6  1      OPC=clc           
  sbbl %ecx, %ebx  #  4     0x7  2      OPC=sbbl_r32_r32  
  retq             #  5     0x9  1      OPC=retq          
                                                          
.size target, .-target
