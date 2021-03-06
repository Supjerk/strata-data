  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  setge %spl         #  1     0    4      OPC=setge_r8        
  movsbl %spl, %r8d  #  2     0x4  4      OPC=movsbl_r32_r8   
  negb %r8b          #  3     0x8  3      OPC=negb_r8         
  cmovel %ecx, %ebx  #  4     0xb  3      OPC=cmovel_r32_r32  
  retq               #  5     0xe  1      OPC=retq            
                                                              
.size target, .-target
