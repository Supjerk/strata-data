  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %xmm2            #  1     0     5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  2     0x5   5      OPC=callq_label        
  xorl %ebx, %ebx                   #  3     0xa   2      OPC=xorl_r32_r32       
  cmovbew %r13w, %bx                #  4     0xc   5      OPC=cmovbew_r16_r16    
  retq                              #  5     0x11  1      OPC=retq               
                                                                                 
.size target, .-target
