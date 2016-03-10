  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP  Bytes  Opcode              
.target:                                          #        0    0      OPC=<label>         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label     
  movq %xmm8, %rbx                                #  2     0x5  5      OPC=movq_r64_xmm    
  movzwq %bx, %rbx                                #  3     0xa  4      OPC=movzwq_r64_r16  
  retq                                            #  4     0xe  1      OPC=retq            
                                                                                           
.size target, .-target
