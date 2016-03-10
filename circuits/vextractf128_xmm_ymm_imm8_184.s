  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vorpd %xmm1, %xmm1, %xmm2   #  1     0    4      OPC=vorpd_xmm_xmm_xmm   
  vminsd %xmm1, %xmm2, %xmm1  #  2     0x4  4      OPC=vminsd_xmm_xmm_xmm  
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target