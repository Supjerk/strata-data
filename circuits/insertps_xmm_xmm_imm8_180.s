  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm2, %xmm5, %xmm8                #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmaxsd %xmm2, %xmm2, %xmm10                   #  3     0x9   4      OPC=vmaxsd_xmm_xmm_xmm      
  punpckhdq %xmm10, %xmm8                       #  4     0xd   5      OPC=punpckhdq_xmm_xmm       
  unpcklpd %xmm8, %xmm1                         #  5     0x12  5      OPC=unpcklpd_xmm_xmm        
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
