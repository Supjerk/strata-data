  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movq $0x6, %rbx                  #  1     0     10     OPC=movq_r64_imm64  
  movb %ah, %bl                    #  2     0xa   2      OPC=movb_r8_rh      
  callq .move_064_032_rbx_r8d_r9d  #  3     0xc   5      OPC=callq_label     
  callq .move_032_064_r8d_r9d_rbx  #  4     0x11  5      OPC=callq_label     
  retq                             #  5     0x16  1      OPC=retq            
                                                                             
.size target, .-target
