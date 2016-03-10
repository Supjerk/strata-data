  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r12_r13    #  1     0     5      OPC=callq_label    
  vzeroall                            #  2     0x5   3      OPC=vzeroall       
  vmovq %xmm9, %rbp                   #  3     0x8   5      OPC=vmovq_r64_xmm  
  callq .move_byte_2_of_ymm1_to_r8b   #  4     0xd   5      OPC=callq_label    
  callq .move_r8b_to_byte_30_of_ymm1  #  5     0x12  5      OPC=callq_label    
  xchgl %ebp, %r13d                   #  6     0x17  3      OPC=xchgl_r32_r32  
  callq .move_064_128_r12_r13_xmm1    #  7     0x1a  5      OPC=callq_label    
  retq                                #  8     0x1f  1      OPC=retq           
                                                                               
.size target, .-target
