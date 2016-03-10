  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  movsbl %bl, %r10d  #  1     0    4      OPC=movsbl_r32_r8  
  notl %r10d         #  2     0x4  3      OPC=notl_r32       
  movsbw %r10b, %bx  #  3     0x7  5      OPC=movsbw_r16_r8  
  retq               #  4     0xc  1      OPC=retq           
                                                             
.size target, .-target
