  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_64_xmm3_xmm12_xmm13           #  1     0     5      OPC=callq_label            
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label            
  vcvtsd2ss %xmm6, %xmm13, %xmm9                #  3     0xa   4      OPC=vcvtsd2ss_xmm_xmm_xmm  
  vmovlhps %xmm6, %xmm9, %xmm1                  #  4     0xe   4      OPC=vmovlhps_xmm_xmm_xmm   
  retq                                          #  5     0x12  1      OPC=retq                   
                                                                                                 
.size target, .-target
