  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vbroadcastsd %xmm2, %ymm5  #  1     0    5      OPC=vbroadcastsd_ymm_xmm  
  unpckhpd %xmm5, %xmm1      #  2     0x5  4      OPC=unpckhpd_xmm_xmm      
  retq                       #  3     0x9  1      OPC=retq                  
                                                                            
.size target, .-target
