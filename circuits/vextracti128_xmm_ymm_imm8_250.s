  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                 
.target:                       #        0    0      OPC=<label>            
  vmovdqa %ymm1, %ymm2         #  1     0    4      OPC=vmovdqa_ymm_ymm    
  vmovdqu %xmm2, %xmm12        #  2     0x4  4      OPC=vmovdqu_xmm_xmm    
  vorps %xmm12, %xmm12, %xmm1  #  3     0x8  5      OPC=vorps_xmm_xmm_xmm  
  retq                         #  4     0xd  1      OPC=retq               
                                                                           
.size target, .-target
