  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP  Bytes  Opcode           
.target:                           #        0    0      OPC=<label>      
  callq .read_of_into_rbx          #  1     0    5      OPC=callq_label  
  callq .move_032_016_ebx_r8w_r9w  #  2     0x5  5      OPC=callq_label  
  callq .move_016_032_r8w_r9w_ebx  #  3     0xa  5      OPC=callq_label  
  retq                             #  4     0xf  1      OPC=retq         
                                                                         
.size target, .-target
