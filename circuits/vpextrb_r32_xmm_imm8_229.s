  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode             
.target:                                    #        0    0      OPC=<label>        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label    
  callq .move_016_008_dx_r10b_r11b          #  2     0x5  5      OPC=callq_label    
  movzbq %r11b, %rbx                        #  3     0xa  4      OPC=movzbq_r64_r8  
  retq                                      #  4     0xe  1      OPC=retq           
                                                                                    
.size target, .-target
