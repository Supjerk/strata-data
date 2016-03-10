  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmulsd %xmm11, %xmm8, %xmm2                     #  2     0x5   5      OPC=vmulsd_xmm_xmm_xmm  
  xorps %xmm2, %xmm10                             #  3     0xa   4      OPC=xorps_xmm_xmm       
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xe   5      OPC=callq_label         
  retq                                            #  5     0x13  1      OPC=retq                
                                                                                                
.size target, .-target
