  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                   
.target:                                        #        0    0      OPC=<label>              
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label          
  vhaddpd %xmm6, %xmm6, %xmm15                  #  2     0x5  4      OPC=vhaddpd_xmm_xmm_xmm  
  movlhps %xmm15, %xmm1                         #  3     0x9  4      OPC=movlhps_xmm_xmm      
  retq                                          #  4     0xd  1      OPC=retq                 
                                                                                              
.size target, .-target
