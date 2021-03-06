  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .set_sf            #  1     0     5      OPC=callq_label   
  callq .read_of_into_rbx  #  2     0x5   5      OPC=callq_label   
  callq .read_sf_into_rcx  #  3     0xa   5      OPC=callq_label   
  xorw %cx, %bx            #  4     0xf   3      OPC=xorw_r16_r16  
  retq                     #  5     0x12  1      OPC=retq          
                                                                   
.size target, .-target
