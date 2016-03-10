  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vorpd %xmm2, %xmm2, %xmm1                       #  2     0x5   4      OPC=vorpd_xmm_xmm_xmm      
  vmovss %xmm10, %xmm1, %xmm13                    #  3     0x9   5      OPC=vmovss_xmm_xmm_xmm     
  vunpcklpd %ymm13, %ymm1, %ymm1                  #  4     0xe   5      OPC=vunpcklpd_ymm_ymm_ymm  
  movss %xmm11, %xmm1                             #  5     0x13  5      OPC=movss_xmm_xmm          
  retq                                            #  6     0x18  1      OPC=retq                   
                                                                                                   
.size target, .-target
