  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label        
  vmovsldup %xmm13, %xmm9               #  2     0x5   5      OPC=vmovsldup_xmm_xmm  
  movsldup %xmm12, %xmm8                #  3     0xa   5      OPC=movsldup_xmm_xmm   
  callq .move_128_256_xmm8_xmm9_ymm3    #  4     0xf   5      OPC=callq_label        
  vmovdqu %ymm3, %ymm1                  #  5     0x14  4      OPC=vmovdqu_ymm_ymm    
  retq                                  #  6     0x18  1      OPC=retq               
                                                                                     
.size target, .-target