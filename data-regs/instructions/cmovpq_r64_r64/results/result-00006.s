  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode               
.target:               #        0    0      OPC=<label>          
  cmovpeq %rcx, %rbx   #  1     0    4      OPC=cmovpeq_r64_r64  
  popcntl %ecx, %r15d  #  2     0x4  5      OPC=popcntl_r32_r32  
  cmovnaw %bx, %bx     #  3     0x9  4      OPC=cmovnaw_r16_r16  
  retq                 #  4     0xd  1      OPC=retq             
                                                                 
.size target, .-target
