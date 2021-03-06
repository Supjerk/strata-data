  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                  
.target:                                        #        0    0      OPC=<label>             
  vmovss %xmm1, %xmm1, %xmm3                    #  1     0    4      OPC=vmovss_xmm_xmm_xmm  
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  2     0x4  5      OPC=callq_label         
  movzwq %r11w, %rbx                            #  3     0x9  4      OPC=movzwq_r64_r16      
  retq                                          #  4     0xd  1      OPC=retq                
                                                                                             
.size target, .-target
