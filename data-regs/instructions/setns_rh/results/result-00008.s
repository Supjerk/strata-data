  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_sf_into_rcx  #  1     0    5      OPC=callq_label   
  addl %ecx, %ecx          #  2     0x5  2      OPC=addl_r32_r32  
  setle %ah                #  3     0x7  3      OPC=setle_rh      
  retq                     #  4     0xa  1      OPC=retq          
                                                                  
.size target, .-target
