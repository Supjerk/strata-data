  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vunpckhpd %xmm9, %xmm2, %xmm3       #  2     0x5   5      OPC=vunpckhpd_xmm_xmm_xmm  
  vpbroadcastq %xmm3, %ymm1           #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm   
  callq .move_64_128_xmm8_xmm9_xmm1   #  4     0xf   5      OPC=callq_label            
  movhlps %xmm3, %xmm1                #  5     0x14  3      OPC=movhlps_xmm_xmm        
  retq                                #  6     0x17  1      OPC=retq                   
                                                                                       
.size target, .-target
