  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text              #  Line  RIP  Bytes  Opcode            
.target:            #        0    0      OPC=<label>       
  movd %xmm1, %r9d  #  1     0    5      OPC=movd_r32_xmm  
  movq %r9, %rbx    #  2     0x5  3      OPC=movq_r64_r64  
  retq              #  3     0x8  1      OPC=retq          
                                                           
.size target, .-target
