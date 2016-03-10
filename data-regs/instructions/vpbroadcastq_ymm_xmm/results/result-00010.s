  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                
.target:                                #        0     0      OPC=<label>           
  vmovdqu %xmm2, %xmm1                  #  1     0     4      OPC=vmovdqu_xmm_xmm   
  callq .move_128_64_xmm1_xmm10_xmm11   #  2     0x4   5      OPC=callq_label       
  vmovddup %xmm10, %xmm11               #  3     0x9   5      OPC=vmovddup_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xe   5      OPC=callq_label       
  callq .move_64_128_xmm10_xmm11_xmm1   #  5     0x13  5      OPC=callq_label       
  retq                                  #  6     0x18  1      OPC=retq              
                                                                                    
.size target, .-target
