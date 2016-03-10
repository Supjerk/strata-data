  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vxorps %xmm7, %xmm7, %xmm2  #  1     0    4      OPC=vxorps_xmm_xmm_xmm  
  movupd %xmm2, %xmm1         #  2     0x4  4      OPC=movupd_xmm_xmm      
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target
