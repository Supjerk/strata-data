  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm2, %xmm4, %xmm1                #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpbroadcastd %xmm1, %xmm4                     #  3     0x9   5      OPC=vpbroadcastd_xmm_xmm    
  sqrtsd %xmm4, %xmm1                           #  4     0xe   4      OPC=sqrtsd_xmm_xmm          
  retq                                          #  5     0x12  1      OPC=retq                    
                                                                                                  
.size target, .-target
