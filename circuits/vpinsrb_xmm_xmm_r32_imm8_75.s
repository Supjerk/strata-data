  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label      
  vzeroall                            #  2     0x5   3      OPC=vzeroall         
  popcntl %r9d, %r15d                 #  3     0x8   5      OPC=popcntl_r32_r32  
  callq .move_064_128_r8_r9_xmm1      #  4     0xd   5      OPC=callq_label      
  cmovnll %ebx, %r8d                  #  5     0x12  4      OPC=cmovnll_r32_r32  
  callq .move_r8b_to_byte_11_of_ymm1  #  6     0x16  5      OPC=callq_label      
  retq                                #  7     0x1b  1      OPC=retq             
                                                                                 
.size target, .-target
