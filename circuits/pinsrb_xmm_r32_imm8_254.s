  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode           
.target:                              #        0    0      OPC=<label>      
  shlb $0x1, %bh                      #  1     0    2      OPC=shlb_rh_one  
  callq .move_016_008_bx_r8b_r9b      #  2     0x2  5      OPC=callq_label  
  callq .move_r8b_to_byte_14_of_ymm1  #  3     0x7  5      OPC=callq_label  
  retq                                #  4     0xc  1      OPC=retq         
                                                                            
.size target, .-target
