  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  vmulps %xmm3, %xmm2, %xmm3                      #  1     0     4      OPC=vmulps_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label         
  vsubpd %xmm3, %xmm2, %xmm12                     #  3     0x9   4      OPC=vsubpd_xmm_xmm_xmm  
  haddps %xmm12, %xmm10                           #  4     0xd   5      OPC=haddps_xmm_xmm      
  vaddss %xmm10, %xmm11, %xmm1                    #  5     0x12  5      OPC=vaddss_xmm_xmm_xmm  
  retq                                            #  6     0x17  1      OPC=retq                
                                                                                                
.size target, .-target
