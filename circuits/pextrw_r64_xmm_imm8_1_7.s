  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovsxwq %xmm7, %ymm3                        #  2     0x5   5      OPC=vpmovsxwq_ymm_xmm  
  xorq %rbx, %rbx                               #  3     0xa   3      OPC=xorq_r64_r64       
  callq .move_128_064_xmm3_r8_r9                #  4     0xd   5      OPC=callq_label        
  xaddw %bx, %r9w                               #  5     0x12  5      OPC=xaddw_r16_r16      
  retq                                          #  6     0x17  1      OPC=retq               
                                                                                             
.size target, .-target
