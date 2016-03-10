  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vmaxps %xmm2, %xmm2, %xmm6                      #  1     0     4      OPC=vmaxps_xmm_xmm_xmm     
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  vunpcklpd %xmm6, %xmm6, %xmm7                   #  3     0x9   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovupd %xmm7, %xmm8                            #  4     0xd   4      OPC=vmovupd_xmm_xmm        
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x11  5      OPC=callq_label            
  retq                                            #  6     0x16  1      OPC=retq                   
                                                                                                   
.size target, .-target
