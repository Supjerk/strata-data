  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %ah, %ecx  #  1     0    3      OPC=movzbl_r32_rh  
  movsbl %cl, %ebx  #  2     0x3  3      OPC=movsbl_r32_r8  
  retq              #  3     0x6  1      OPC=retq           
                                                            
.size target, .-target
