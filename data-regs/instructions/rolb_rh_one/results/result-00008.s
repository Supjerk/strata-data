  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  xorb %al, %al   #  1     0    2      OPC=xorb_r8_r8    
  xaddb %al, %ah  #  2     0x2  3      OPC=xaddb_rh_r8   
  shlw $0x1, %ax  #  3     0x5  3      OPC=shlw_r16_one  
  cwtl            #  4     0x8  1      OPC=cwtl          
  retq            #  5     0x9  1      OPC=retq          
                                                         
.size target, .-target
