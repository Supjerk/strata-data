  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vmovsldup %xmm2, %xmm1                        #  2     0x5   4      OPC=vmovsldup_xmm_xmm       
  vpunpckldq %xmm2, %xmm7, %xmm13               #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm  
  movsd %xmm13, %xmm1                           #  4     0xd   5      OPC=movsd_xmm_xmm           
  retq                                          #  5     0x12  1      OPC=retq                    
                                                                                                  
.size target, .-target
