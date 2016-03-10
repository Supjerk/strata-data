  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movzwq %cx, %rax    #  1     0    4      OPC=movzwq_r64_r16   
  xchgq %rax, %rax    #  2     0x4  3      OPC=xchgq_r64_r64    
  cmovngl %eax, %ebx  #  3     0x7  3      OPC=cmovngl_r32_r32  
  retq                #  4     0xa  1      OPC=retq             
                                                                
.size target, .-target