  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmovpoq %rcx, %rbx  #  1     0    4      OPC=cmovpoq_r64_r64  
  andw %bx, %bx       #  2     0x4  3      OPC=andw_r16_r16     
  retq                #  3     0x7  1      OPC=retq             
                                                                
.size target, .-target
