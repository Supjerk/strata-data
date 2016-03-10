  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vbroadcastss %xmm3, %ymm7       #  1     0     5      OPC=vbroadcastss_ymm_xmm    
  vpunpckhdq %xmm3, %xmm3, %xmm1  #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpunpckldq %xmm7, %xmm1, %xmm0  #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovsd %xmm2, %xmm0, %xmm1      #  4     0xd   4      OPC=vmovsd_xmm_xmm_xmm      
  retq                            #  5     0x11  1      OPC=retq                    
                                                                                    
.size target, .-target
