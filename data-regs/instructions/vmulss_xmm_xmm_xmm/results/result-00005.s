  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  mulss %xmm3, %xmm2                            #  1     0     4      OPC=mulss_xmm_xmm      
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label        
  vcvtps2pd %xmm7, %ymm1                        #  3     0x9   4      OPC=vcvtps2pd_ymm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  4     0xd   5      OPC=callq_label        
  retq                                          #  5     0x12  1      OPC=retq               
                                                                                             
.size target, .-target
