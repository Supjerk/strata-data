  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  vmovups %xmm2, %xmm1                            #  1     0     4      OPC=vmovups_xmm_xmm       
  callq .move_128_64_xmm2_xmm12_xmm13             #  2     0x4   5      OPC=callq_label           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label           
  vbroadcastss %xmm8, %xmm14                      #  4     0xe   5      OPC=vbroadcastss_xmm_xmm  
  vmovsd %xmm13, %xmm14, %xmm1                    #  5     0x13  5      OPC=vmovsd_xmm_xmm_xmm    
  retq                                            #  6     0x18  1      OPC=retq                  
                                                                                                  
.size target, .-target
