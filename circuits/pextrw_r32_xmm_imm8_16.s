  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  xorq %rbx, %rbx   #  1     0    3      OPC=xorq_r64_r64     
  movq %xmm1, %rdx  #  2     0x3  5      OPC=movq_r64_xmm     
  cmovnbw %dx, %bx  #  3     0x8  4      OPC=cmovnbw_r16_r16  
  retq              #  4     0xc  1      OPC=retq             
                                                              
.size target, .-target
