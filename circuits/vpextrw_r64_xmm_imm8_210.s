  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode              
.target:                                        #        0    0      OPC=<label>         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label     
  movd %xmm5, %r12d                             #  2     0x5  5      OPC=movd_r32_xmm    
  movzwq %r12w, %rbx                            #  3     0xa  4      OPC=movzwq_r64_r16  
  retq                                          #  4     0xe  1      OPC=retq            
                                                                                         
.size target, .-target
