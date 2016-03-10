  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label           
  callq .move_064_128_r8_r9_xmm3      #  2     0x5   5      OPC=callq_label           
  xaddb %r9b, %r8b                    #  3     0xa   4      OPC=xaddb_r8_r8           
  vbroadcastss %xmm3, %xmm1           #  4     0xe   5      OPC=vbroadcastss_xmm_xmm  
  callq .move_r9b_to_byte_12_of_ymm1  #  5     0x13  5      OPC=callq_label           
  retq                                #  6     0x18  1      OPC=retq                  
                                                                                      
.size target, .-target
