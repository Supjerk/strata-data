  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %bl, %eax  #  1     0    3      OPC=movsbl_r32_r8  
  movsbq %bl, %r13  #  2     0x3  4      OPC=movsbq_r64_r8  
  addq %r13, %rax   #  3     0x7  3      OPC=addq_r64_r64   
  adcb %bl, %bl     #  4     0xa  2      OPC=adcb_r8_r8     
  retq              #  5     0xc  1      OPC=retq           
                                                            
.size target, .-target
