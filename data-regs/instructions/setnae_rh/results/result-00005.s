  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode           
.target:                           #        0     0      OPC=<label>      
  callq .read_cf_into_rbx          #  1     0     5      OPC=callq_label  
  callq .move_064_032_rbx_r8d_r9d  #  2     0x5   5      OPC=callq_label  
  callq .move_008_016_r8b_r9b_bx   #  3     0xa   5      OPC=callq_label  
  movb %bl, %ah                    #  4     0xf   2      OPC=movb_rh_r8   
  retq                             #  5     0x11  1      OPC=retq         
                                                                          
.size target, .-target
