  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label      
  xchgq %r9, %rbx                 #  2     0x5   3      OPC=xchgq_r64_r64    
  callq .move_064_128_r8_r9_xmm3  #  3     0x8   5      OPC=callq_label      
  vmovdqa %xmm3, %xmm1            #  4     0xd   4      OPC=vmovdqa_xmm_xmm  
  retq                            #  5     0x11  1      OPC=retq             
                                                                             
.size target, .-target
