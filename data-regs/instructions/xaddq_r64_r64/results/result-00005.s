  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xchgq %rcx, %rbx  #  1     0    3      OPC=xchgq_r64_r64  
  addq %rcx, %rbx   #  2     0x3  3      OPC=addq_r64_r64   
  retq              #  3     0x6  1      OPC=retq           
                                                            
.size target, .-target
