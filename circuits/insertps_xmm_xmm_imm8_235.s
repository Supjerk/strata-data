  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                
.target:                                          #        0    0      OPC=<label>           
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label       
  movshdup %xmm11, %xmm1                          #  2     0x5  5      OPC=movshdup_xmm_xmm  
  movlhps %xmm11, %xmm1                           #  3     0xa  4      OPC=movlhps_xmm_xmm   
  retq                                            #  4     0xe  1      OPC=retq              
                                                                                             
.size target, .-target
