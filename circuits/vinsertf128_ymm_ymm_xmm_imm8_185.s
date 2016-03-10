  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vminpd %xmm3, %xmm3, %xmm9          #  1     0     4      OPC=vminpd_xmm_xmm_xmm  
  vminps %ymm2, %ymm2, %ymm8          #  2     0x4   4      OPC=vminps_ymm_ymm_ymm  
  callq .move_128_256_xmm8_xmm9_ymm2  #  3     0x8   5      OPC=callq_label         
  vmovaps %ymm2, %ymm1                #  4     0xd   4      OPC=vmovaps_ymm_ymm     
  retq                                #  5     0x11  1      OPC=retq                
                                                                                    
.size target, .-target
