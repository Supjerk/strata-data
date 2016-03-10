  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                        
.target:                               #        0     0      OPC=<label>                   
  callq .move_128_64_xmm3_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  haddps %xmm2, %xmm11                 #  2     0x5   5      OPC=haddps_xmm_xmm            
  vfnmsub213pd %xmm10, %xmm11, %xmm10  #  3     0xa   5      OPC=vfnmsub213pd_xmm_xmm_xmm  
  vfmsub231sd %xmm10, %xmm2, %xmm1     #  4     0xf   5      OPC=vfmsub231sd_xmm_xmm_xmm   
  retq                                 #  5     0x14  1      OPC=retq                      
                                                                                           
.size target, .-target
