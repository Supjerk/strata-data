  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode                       
.target:                             #        0    0      OPC=<label>                  
  vfmadd231pd %xmm1, %xmm2, %xmm3    #  1     0    5      OPC=vfmadd231pd_xmm_xmm_xmm  
  callq .move_128_64_xmm3_xmm8_xmm9  #  2     0x5  5      OPC=callq_label              
  vmovsd %xmm8, %xmm1, %xmm1         #  3     0xa  5      OPC=vmovsd_xmm_xmm_xmm       
  retq                               #  4     0xf  1      OPC=retq                     
                                                                                       
.size target, .-target