  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vcvttpd2dq %xmm4, %xmm11                      #  2     0x5   4      OPC=vcvttpd2dq_xmm_xmm     
  vunpcklpd %xmm6, %xmm2, %xmm1                 #  3     0x9   4      OPC=vunpcklpd_xmm_xmm_xmm  
  sqrtss %xmm11, %xmm1                          #  4     0xd   5      OPC=sqrtss_xmm_xmm         
  retq                                          #  5     0x12  1      OPC=retq                   
                                                                                                 
.size target, .-target