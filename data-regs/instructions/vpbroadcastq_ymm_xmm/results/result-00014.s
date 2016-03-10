  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  vmovapd %xmm2, %xmm1                  #  1     0     4      OPC=vmovapd_xmm_xmm       
  vmovlhps %xmm1, %xmm2, %xmm6          #  2     0x4   4      OPC=vmovlhps_xmm_xmm_xmm  
  vpbroadcastq %xmm6, %xmm13            #  3     0x8   5      OPC=vpbroadcastq_xmm_xmm  
  vpbroadcastq %xmm6, %xmm12            #  4     0xd   5      OPC=vpbroadcastq_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x12  5      OPC=callq_label           
  retq                                  #  6     0x17  1      OPC=retq                  
                                                                                        
.size target, .-target
