  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode                 
.target:                             #        0    0      OPC=<label>            
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0    5      OPC=callq_label        
  vpmovzxwq %xmm9, %xmm12            #  2     0x5  5      OPC=vpmovzxwq_xmm_xmm  
  vmovq %xmm12, %rbx                 #  3     0xa  5      OPC=vmovq_r64_xmm      
  retq                               #  4     0xf  1      OPC=retq               
                                                                                 
.size target, .-target
