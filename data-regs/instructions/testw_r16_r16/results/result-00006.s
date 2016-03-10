  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswq %bx, %rbx  #  1     0    4      OPC=movswq_r64_r16  
  movswl %cx, %edi  #  2     0x4  3      OPC=movswl_r32_r16  
  testl %edi, %ebx  #  3     0x7  3      OPC=testl_r32_r32   
  retq              #  4     0xa  1      OPC=retq            
                                                             
.size target, .-target
