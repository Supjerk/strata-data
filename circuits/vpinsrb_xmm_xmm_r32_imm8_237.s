  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r10_r11    #  1     0     5      OPC=callq_label    
  vzeroall                            #  2     0x5   3      OPC=vzeroall       
  movzbq %bl, %r9                     #  3     0x8   4      OPC=movzbq_r64_r8  
  callq .move_064_128_r10_r11_xmm1    #  4     0xc   5      OPC=callq_label    
  callq .move_r9b_to_byte_13_of_ymm1  #  5     0x11  5      OPC=callq_label    
  retq                                #  6     0x16  1      OPC=retq           
                                                                               
.size target, .-target
