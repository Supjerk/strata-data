  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vsubsd %xmm2, %xmm2, %xmm12  #  1     0    4      OPC=vsubsd_xmm_xmm_xmm  
  vmovddup %ymm2, %ymm1        #  2     0x4  4      OPC=vmovddup_ymm_ymm    
  movhlps %xmm12, %xmm1        #  3     0x8  4      OPC=movhlps_xmm_xmm     
  retq                         #  4     0xc  1      OPC=retq                
                                                                            
.size target, .-target
