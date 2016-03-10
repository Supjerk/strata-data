  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label         
  movapd %xmm9, %xmm1                #  2     0x5   5      OPC=movapd_xmm_xmm      
  vmaxpd %xmm8, %xmm8, %xmm14        #  3     0xa   5      OPC=vmaxpd_xmm_xmm_xmm  
  unpcklpd %xmm14, %xmm1             #  4     0xf   5      OPC=unpcklpd_xmm_xmm    
  retq                               #  5     0x14  1      OPC=retq                
                                                                                   
.size target, .-target