  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  pmovzxwq %xmm9, %xmm8                           #  2     0x5   6      OPC=pmovzxwq_xmm_xmm  
  vmovups %xmm8, %xmm2                            #  3     0xb   5      OPC=vmovups_xmm_xmm   
  callq .move_128_064_xmm2_r8_r9                  #  4     0x10  5      OPC=callq_label       
  movzwl %r9w, %ebx                               #  5     0x15  4      OPC=movzwl_r32_r16    
  retq                                            #  6     0x19  1      OPC=retq              
                                                                                              
.size target, .-target
