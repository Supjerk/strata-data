  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vpand %xmm2, %xmm2, %xmm5          #  1     0     4      OPC=vpand_xmm_xmm_xmm         
  vfnmsub231ps %xmm1, %xmm5, %xmm3   #  2     0x4   5      OPC=vfnmsub231ps_xmm_xmm_xmm  
  callq .move_128_64_xmm3_xmm8_xmm9  #  3     0x9   5      OPC=callq_label               
  callq .move_64_128_xmm8_xmm9_xmm1  #  4     0xe   5      OPC=callq_label               
  vmovapd %xmm1, %xmm1               #  5     0x13  4      OPC=vmovapd_xmm_xmm           
  retq                               #  6     0x17  1      OPC=retq                      
                                                                                         
.size target, .-target