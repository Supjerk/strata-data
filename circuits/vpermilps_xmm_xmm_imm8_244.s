  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovshdup %xmm2, %xmm3      #  1     0    4      OPC=vmovshdup_xmm_xmm   
  vmaxpd %xmm3, %xmm3, %xmm1  #  2     0x4  4      OPC=vmaxpd_xmm_xmm_xmm  
  movsd %xmm2, %xmm1          #  3     0x8  4      OPC=movsd_xmm_xmm       
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
