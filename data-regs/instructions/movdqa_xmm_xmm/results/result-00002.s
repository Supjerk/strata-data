  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP  Bytes  Opcode           
.target:                          #        0    0      OPC=<label>      
  callq .move_128_064_xmm2_r8_r9  #  1     0    5      OPC=callq_label  
  movb %r9b, %r9b                 #  2     0x5  3      OPC=movb_r8_r8   
  callq .move_064_128_r8_r9_xmm1  #  3     0x8  5      OPC=callq_label  
  retq                            #  4     0xd  1      OPC=retq         
                                                                        
.size target, .-target
