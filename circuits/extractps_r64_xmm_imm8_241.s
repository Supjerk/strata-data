  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  movq $0xffffffffffffff80, %rbx            #  2     0x5   10     OPC=movq_r64_imm64  
  xchgl %ebx, %edx                          #  3     0xf   2      OPC=xchgl_r32_r32   
  retq                                      #  4     0x11  1      OPC=retq            
                                                                                      
.size target, .-target
