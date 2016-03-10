  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                
.target:                                          #        0    0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label       
  unpckhps %xmm2, %xmm1                           #  2     0x5  3      OPC=unpckhps_xmm_xmm  
  minss %xmm10, %xmm1                             #  3     0x8  5      OPC=minss_xmm_xmm     
  retq                                            #  4     0xd  1      OPC=retq              
                                                                                             
.size target, .-target
