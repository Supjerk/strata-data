  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vpunpckhqdq %xmm8, %xmm8, %xmm11   #  2     0x5   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vcvtps2pd %xmm11, %xmm15           #  3     0xa   5      OPC=vcvtps2pd_xmm_xmm        
  movddup %xmm15, %xmm1              #  4     0xf   5      OPC=movddup_xmm_xmm          
  retq                               #  5     0x14  1      OPC=retq                     
                                                                                        
.size target, .-target
