  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmovapd %ymm2, %ymm8                #  1     0     4      OPC=vmovapd_ymm_ymm     
  movapd %xmm3, %xmm9                 #  2     0x4   5      OPC=movapd_xmm_xmm      
  callq .move_128_256_xmm8_xmm9_ymm3  #  3     0x9   5      OPC=callq_label         
  vminps %ymm3, %ymm3, %ymm1          #  4     0xe   4      OPC=vminps_ymm_ymm_ymm  
  retq                                #  5     0x12  1      OPC=retq                
                                                                                    
.size target, .-target
