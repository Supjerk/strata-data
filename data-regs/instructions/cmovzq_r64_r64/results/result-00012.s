  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP  Bytes  Opcode              
.target:                             #        0    0      OPC=<label>         
  callq .move_064_032_rbx_r12d_r13d  #  1     0    5      OPC=callq_label     
  callq .move_032_064_r12d_r13d_rbx  #  2     0x5  5      OPC=callq_label     
  cmoveq %rcx, %rbx                  #  3     0xa  4      OPC=cmoveq_r64_r64  
  retq                               #  4     0xe  1      OPC=retq            
                                                                              
.size target, .-target
