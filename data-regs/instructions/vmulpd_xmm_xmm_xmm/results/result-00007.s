  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  mulpd %xmm3, %xmm2                #  1     0     4      OPC=mulpd_xmm_xmm       
  vmovss %xmm2, %xmm2, %xmm3        #  2     0x4   4      OPC=vmovss_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r12_r13  #  3     0x8   5      OPC=callq_label         
  vzeroall                          #  4     0xd   3      OPC=vzeroall            
  callq .move_064_128_r12_r13_xmm1  #  5     0x10  5      OPC=callq_label         
  retq                              #  6     0x15  1      OPC=retq                
                                                                                  
.size target, .-target
