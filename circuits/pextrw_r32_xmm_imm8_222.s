  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  movq $0x20, %rbx                          #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0xa   5      OPC=callq_label     
  xchgw %bx, %r9w                           #  3     0xf   4      OPC=xchgw_r16_r16   
  retq                                      #  4     0x13  1      OPC=retq            
                                                                                      
.size target, .-target
