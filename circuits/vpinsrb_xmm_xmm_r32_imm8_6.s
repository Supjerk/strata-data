  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r8_r9     #  1     0     5      OPC=callq_label    
  xorb %bl, %bh                      #  2     0x5   2      OPC=xorb_rh_r8     
  vzeroall                           #  3     0x7   3      OPC=vzeroall       
  callq .move_064_128_r8_r9_xmm1     #  4     0xa   5      OPC=callq_label    
  xchgl %ebx, %r8d                   #  5     0xf   3      OPC=xchgl_r32_r32  
  callq .move_r8b_to_byte_6_of_ymm1  #  6     0x12  5      OPC=callq_label    
  retq                               #  7     0x17  1      OPC=retq           
                                                                              
.size target, .-target
