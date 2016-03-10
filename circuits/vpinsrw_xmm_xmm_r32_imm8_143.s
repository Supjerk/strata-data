  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r12_r13    #  1     0     5      OPC=callq_label    
  vzeroall                            #  2     0x5   3      OPC=vzeroall       
  movzbw %bl, %r9w                    #  3     0x8   5      OPC=movzbw_r16_r8  
  callq .move_064_128_r12_r13_xmm1    #  4     0xd   5      OPC=callq_label    
  callq .move_r9b_to_byte_14_of_ymm1  #  5     0x12  5      OPC=callq_label    
  callq .move_016_008_bx_r8b_r9b      #  6     0x17  5      OPC=callq_label    
  callq .move_r9b_to_byte_15_of_ymm1  #  7     0x1c  5      OPC=callq_label    
  retq                                #  8     0x21  1      OPC=retq           
                                                                               
.size target, .-target
