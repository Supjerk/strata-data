  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                   
.target:                                          #        0    0      OPC=<label>              
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label          
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2  #  2     0x5  5      OPC=callq_label          
  vhaddpd %xmm10, %xmm8, %xmm1                    #  3     0xa  5      OPC=vhaddpd_xmm_xmm_xmm  
  retq                                            #  4     0xf  1      OPC=retq                 
                                                                                                
.size target, .-target
