  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode             
.target:                          #        0    0      OPC=<label>        
  callq .move_128_064_xmm1_r8_r9  #  1     0    5      OPC=callq_label    
  movsbl %r8b, %ebx               #  2     0x5  4      OPC=movsbl_r32_r8  
  xaddl %ebx, %r9d                #  3     0x9  4      OPC=xaddl_r32_r32  
  retq                            #  4     0xd  1      OPC=retq           
                                                                          
.size target, .-target
