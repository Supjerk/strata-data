  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode               
.target:                                          #        0    0      OPC=<label>          
  vmovdqu %xmm1, %xmm3                            #  1     0    4      OPC=vmovdqu_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4  5      OPC=callq_label      
  vmovd %xmm11, %ebx                              #  3     0x9  4      OPC=vmovd_r32_xmm    
  retq                                            #  4     0xd  1      OPC=retq             
                                                                                            
.size target, .-target
