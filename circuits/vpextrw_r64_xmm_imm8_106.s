  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  movq $0x0, %rbx                           #  2     0x5   10     OPC=movq_r64_imm64  
  xchgw %bx, %dx                            #  3     0xf   3      OPC=xchgw_r16_r16   
  retq                                      #  4     0x12  1      OPC=retq            
                                                                                      
.size target, .-target
