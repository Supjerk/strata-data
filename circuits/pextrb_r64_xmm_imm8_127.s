  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  orpd %xmm1, %xmm1                   #  1     0     4      OPC=orpd_xmm_xmm    
  movq $0x7, %rbx                     #  2     0x4   10     OPC=movq_r64_imm64  
  callq .move_byte_15_of_ymm1_to_r9b  #  3     0xe   5      OPC=callq_label     
  movb %r9b, %bl                      #  4     0x13  3      OPC=movb_r8_r8      
  retq                                #  5     0x16  1      OPC=retq            
                                                                                
.size target, .-target
