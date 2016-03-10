  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vbroadcastsd %xmm3, %ymm11            #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm  
  unpckhpd %xmm3, %xmm11                #  3     0xa   5      OPC=unpckhpd_xmm_xmm      
  andpd %xmm3, %xmm11                   #  4     0xf   5      OPC=andpd_xmm_xmm         
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x14  5      OPC=callq_label           
  retq                                  #  6     0x19  1      OPC=retq                  
                                                                                        
.size target, .-target
