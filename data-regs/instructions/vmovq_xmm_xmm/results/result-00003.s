  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label    
  vzeroall                            #  2     0x5   3      OPC=vzeroall       
  movzbq %r8b, %r9                    #  3     0x8   4      OPC=movzbq_r64_r8  
  callq .move_byte_23_of_ymm1_to_r9b  #  4     0xc   5      OPC=callq_label    
  callq .move_064_128_r8_r9_xmm1      #  5     0x11  5      OPC=callq_label    
  retq                                #  6     0x16  1      OPC=retq           
                                                                               
.size target, .-target
