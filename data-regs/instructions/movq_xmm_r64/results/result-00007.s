  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  vmovq %rbx, %xmm0  #  1     0    5      OPC=vmovq_xmm_r64  
  movq %xmm0, %xmm1  #  2     0x5  4      OPC=movq_xmm_xmm   
  retq               #  3     0x9  1      OPC=retq           
                                                             
.size target, .-target
