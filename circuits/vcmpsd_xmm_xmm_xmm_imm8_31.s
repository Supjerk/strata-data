  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .set_cf                     #  1     0     5      OPC=callq_label   
  callq .move_128_064_xmm2_r10_r11  #  2     0x5   5      OPC=callq_label   
  vzeroall                          #  3     0xa   3      OPC=vzeroall      
  notb %r10b                        #  4     0xd   3      OPC=notb_r8       
  sbbq %r10, %r10                   #  5     0x10  3      OPC=sbbq_r64_r64  
  callq .move_064_128_r10_r11_xmm1  #  6     0x13  5      OPC=callq_label   
  retq                              #  7     0x18  1      OPC=retq          
                                                                            
.size target, .-target
