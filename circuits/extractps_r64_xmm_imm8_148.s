  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffb, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_064_xmm1_r8_r9  #  2     0xa   5      OPC=callq_label     
  subb %bh, %bh                   #  3     0xf   2      OPC=subb_rh_rh      
  xchgl %ebx, %r8d                #  4     0x11  3      OPC=xchgl_r32_r32   
  retq                            #  5     0x14  1      OPC=retq            
                                                                            
.size target, .-target
