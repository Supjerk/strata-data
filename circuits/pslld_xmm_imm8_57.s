  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  vpandn %xmm1, %xmm1, %xmm13           #  1     0     4      OPC=vpandn_xmm_xmm_xmm    
  vpbroadcastb %xmm13, %xmm14           #  2     0x4   5      OPC=vpbroadcastb_xmm_xmm  
  vpmovzxbd %xmm14, %xmm12              #  3     0x9   5      OPC=vpmovzxbd_xmm_xmm     
  callq .move_128_256_xmm12_xmm13_ymm2  #  4     0xe   5      OPC=callq_label           
  movsldup %xmm2, %xmm1                 #  5     0x13  4      OPC=movsldup_xmm_xmm      
  retq                                  #  6     0x17  1      OPC=retq                  
                                                                                        
.size target, .-target
