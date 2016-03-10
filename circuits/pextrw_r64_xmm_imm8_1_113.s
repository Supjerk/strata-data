  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                 
.target:                            #        0    0      OPC=<label>            
  vpmovsxwq %xmm1, %xmm2            #  1     0    5      OPC=vpmovsxwq_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  2     0x5  5      OPC=callq_label        
  movzwq %r13w, %rbx                #  3     0xa  4      OPC=movzwq_r64_r16     
  retq                              #  4     0xe  1      OPC=retq               
                                                                                
.size target, .-target