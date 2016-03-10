  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode              
.target:                                #        0     0      OPC=<label>         
  callq .move_128_064_xmm3_r10_r11      #  1     0     5      OPC=callq_label     
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x5   5      OPC=callq_label     
  vmovq %r10, %xmm1                     #  3     0xa   5      OPC=vmovq_xmm_r64   
  movdqa %xmm13, %xmm1                  #  4     0xf   5      OPC=movdqa_xmm_xmm  
  retq                                  #  5     0x14  1      OPC=retq            
                                                                                  
.size target, .-target
