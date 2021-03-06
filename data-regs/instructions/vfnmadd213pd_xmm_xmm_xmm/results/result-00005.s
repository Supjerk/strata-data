  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vfnmadd231pd %xmm1, %xmm2, %xmm3  #  1     0     5      OPC=vfnmadd231pd_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r12_r13  #  2     0x5   5      OPC=callq_label               
  vzeroall                          #  3     0xa   3      OPC=vzeroall                  
  andw %r13w, %r13w                 #  4     0xd   4      OPC=andw_r16_r16              
  callq .move_064_128_r12_r13_xmm1  #  5     0x11  5      OPC=callq_label               
  retq                              #  6     0x16  1      OPC=retq                      
                                                                                        
.size target, .-target
