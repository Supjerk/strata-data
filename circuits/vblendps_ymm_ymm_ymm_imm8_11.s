  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vdivsd %xmm5, %xmm5, %xmm10                   #  2     0x5   4      OPC=vdivsd_xmm_xmm_xmm     
  vunpckhps %xmm10, %xmm2, %xmm6                #  3     0x9   5      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm2  #  4     0xe   5      OPC=callq_label            
  vmovupd %ymm2, %ymm1                          #  5     0x13  4      OPC=vmovupd_ymm_ymm        
  retq                                          #  6     0x17  1      OPC=retq                   
                                                                                                 
.size target, .-target
