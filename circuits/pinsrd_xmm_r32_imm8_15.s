  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode            
.target:                                          #        0     0      OPC=<label>       
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label   
  movd %ebx, %xmm11                               #  2     0x5   5      OPC=movd_xmm_r32  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  3     0xa   5      OPC=callq_label   
  callq .move_032_016_ebx_r8w_r9w                 #  4     0xf   5      OPC=callq_label   
  callq .move_r9b_to_byte_14_of_ymm1              #  5     0x14  5      OPC=callq_label   
  callq .move_r8b_to_byte_12_of_ymm1              #  6     0x19  5      OPC=callq_label   
  retq                                            #  7     0x1e  1      OPC=retq          
                                                                                          
.size target, .-target
