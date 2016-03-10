  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  punpckhdq %xmm1, %xmm1                    #  1     0     4      OPC=punpckhdq_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label        
  callq .move_032_016_edx_r8w_r9w           #  3     0x9   5      OPC=callq_label        
  movzwq %r9w, %rbx                         #  4     0xe   4      OPC=movzwq_r64_r16     
  retq                                      #  5     0x12  1      OPC=retq               
                                                                                         
.size target, .-target
