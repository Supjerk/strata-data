  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vxorpd %xmm9, %xmm2, %xmm1         #  2     0x5   5      OPC=vxorpd_xmm_xmm_xmm     
  punpckhdq %xmm2, %xmm9             #  3     0xa   5      OPC=punpckhdq_xmm_xmm      
  andnps %xmm1, %xmm9                #  4     0xf   4      OPC=andnps_xmm_xmm         
  cvttpd2dq %xmm9, %xmm4             #  5     0x13  5      OPC=cvttpd2dq_xmm_xmm      
  vunpckhpd %xmm9, %xmm4, %xmm1      #  6     0x18  5      OPC=vunpckhpd_xmm_xmm_xmm  
  retq                               #  7     0x1d  1      OPC=retq                   
                                                                                      
.size target, .-target
