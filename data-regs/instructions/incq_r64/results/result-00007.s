  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode            
.target:             #        0    0      OPC=<label>       
  xorl %r12d, %r12d  #  1     0    3      OPC=xorl_r32_r32  
  incb %r12b         #  2     0x3  3      OPC=incb_r8       
  addq %r12, %rbx    #  3     0x6  3      OPC=addq_r64_r64  
  retq               #  4     0x9  1      OPC=retq          
                                                            
.size target, .-target
