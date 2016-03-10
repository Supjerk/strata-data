  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  movd %ebx, %xmm3                   #  1     0     4      OPC=movd_xmm_r32            
  callq .move_128_64_xmm1_xmm8_xmm9  #  2     0x4   5      OPC=callq_label             
  vpunpckldq %xmm3, %xmm8, %xmm2     #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm  
  movsd %xmm2, %xmm1                 #  4     0xd   4      OPC=movsd_xmm_xmm           
  retq                               #  5     0x11  1      OPC=retq                    
                                                                                       
.size target, .-target
