  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmulpd %xmm2, %xmm1, %xmm10                   #  1     0     4      OPC=vmulpd_xmm_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label         
  movshdup %xmm6, %xmm1                         #  3     0x9   4      OPC=movshdup_xmm_xmm    
  haddpd %xmm10, %xmm1                          #  4     0xd   5      OPC=haddpd_xmm_xmm      
  retq                                          #  5     0x12  1      OPC=retq                
                                                                                              
.size target, .-target
