  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_64_xmm3_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vbroadcastsd %xmm9, %ymm0          #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm   
  callq .move_128_064_xmm2_r8_r9     #  3     0xa   5      OPC=callq_label            
  vbroadcastsd %xmm8, %ymm5          #  4     0xf   5      OPC=vbroadcastsd_ymm_xmm   
  vunpckhpd %ymm0, %ymm5, %ymm1      #  5     0x14  4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_064_128_r8_r9_xmm1     #  6     0x18  5      OPC=callq_label            
  retq                               #  7     0x1d  1      OPC=retq                   
                                                                                      
.size target, .-target
