  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label      
  vzeroall                          #  2     0x5   3      OPC=vzeroall         
  callq .clear_zf                   #  3     0x8   5      OPC=callq_label      
  cmovnzw %bx, %r11w                #  4     0xd   5      OPC=cmovnzw_r16_r16  
  callq .move_064_128_r10_r11_xmm1  #  5     0x12  5      OPC=callq_label      
  retq                              #  6     0x17  1      OPC=retq             
                                                                               
.size target, .-target
