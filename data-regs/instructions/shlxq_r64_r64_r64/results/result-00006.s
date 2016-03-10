  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movq %rcx, %rbx    #  1     0    3      OPC=movq_r64_r64    
  movzwl %dx, %r14d  #  2     0x3  4      OPC=movzwl_r32_r16  
  movq %r14, %rcx    #  3     0x7  3      OPC=movq_r64_r64    
  salq %cl, %rbx     #  4     0xa  3      OPC=salq_r64_cl     
  retq               #  5     0xd  1      OPC=retq            
                                                              
.size target, .-target
