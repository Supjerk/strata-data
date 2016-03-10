  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                              #  Line  RIP  Bytes  Opcode               
.target:                            #        0    0      OPC=<label>          
  callq .move_128_064_xmm1_r10_r11  #  1     0    5      OPC=callq_label      
  xorq %rbx, %rbx                   #  2     0x5  3      OPC=xorq_r64_r64     
  cmovbeq %r10, %rbx                #  3     0x8  4      OPC=cmovbeq_r64_r64  
  retq                              #  4     0xc  1      OPC=retq             
                                                                              
.size target, .-target
