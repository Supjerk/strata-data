  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_sf_into_rcx  #  1     0    5      OPC=callq_label  
  decw %cx                 #  2     0x5  3      OPC=decw_r16     
  callq .read_sf_into_rbx  #  3     0x8  5      OPC=callq_label  
  retq                     #  4     0xd  1      OPC=retq         
                                                                 
.size target, .-target
