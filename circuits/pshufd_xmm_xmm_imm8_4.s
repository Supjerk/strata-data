  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                          
.target:                                        #        0     0      OPC=<label>                     
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label                 
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  2     0x5   5      OPC=callq_label                 
  vfmaddsub132pd %xmm6, %xmm1, %xmm7            #  3     0xa   5      OPC=vfmaddsub132pd_xmm_xmm_xmm  
  vpbroadcastd %xmm4, %ymm6                     #  4     0xf   5      OPC=vpbroadcastd_ymm_xmm        
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x14  5      OPC=callq_label                 
  retq                                          #  6     0x19  1      OPC=retq                        
                                                                                                      
.size target, .-target
