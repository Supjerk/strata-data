  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpckhps %xmm1, %xmm8, %xmm8                   #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  punpckhdq %xmm11, %xmm10                        #  3     0x9   5      OPC=punpckhdq_xmm_xmm      
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xe   5      OPC=callq_label            
  retq                                            #  5     0x13  1      OPC=retq                   
                                                                                                   
.size target, .-target
