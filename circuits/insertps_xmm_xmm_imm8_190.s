  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  vmovq %xmm1, %r12  #  1     0    5      OPC=vmovq_r64_xmm  
  movd %r12d, %xmm1  #  2     0x5  5      OPC=movd_xmm_r32   
  retq               #  3     0xa  1      OPC=retq           
                                                             
.size target, .-target
