  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  vmulpd %xmm2, %xmm1, %xmm7                      #  1     0     4      OPC=vmulpd_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label         
  haddpd %xmm8, %xmm7                             #  3     0x9   5      OPC=haddpd_xmm_xmm      
  movq %xmm7, %xmm1                               #  4     0xe   4      OPC=movq_xmm_xmm        
  retq                                            #  5     0x12  1      OPC=retq                
                                                                                                
.size target, .-target
