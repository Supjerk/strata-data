  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label            
  sall $0x1, %r9d                 #  2     0x5   3      OPC=sall_r32_one           
  vzeroall                        #  3     0x8   3      OPC=vzeroall               
  callq .move_064_128_r8_r9_xmm3  #  4     0xb   5      OPC=callq_label            
  vunpcklpd %xmm10, %xmm3, %xmm1  #  5     0x10  5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                            #  6     0x15  1      OPC=retq                   
                                                                                   
.size target, .-target