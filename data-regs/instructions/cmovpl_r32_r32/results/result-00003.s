  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movslq %ecx, %rcx   #  1     0    3      OPC=movslq_r64_r32   
  cmovpel %ecx, %ebx  #  2     0x3  3      OPC=cmovpel_r32_r32  
  retq                #  3     0x6  1      OPC=retq             
                                                                
.size target, .-target
