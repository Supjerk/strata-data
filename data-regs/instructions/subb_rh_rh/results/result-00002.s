  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  xorb %al, %al    #  1     0    2      OPC=xorb_r8_r8      
  cwtl             #  2     0x2  1      OPC=cwtl            
  cmovow %ax, %ax  #  3     0x3  4      OPC=cmovow_r16_r16  
  sbbb %bh, %ah    #  4     0x7  2      OPC=sbbb_rh_rh      
  retq             #  5     0x9  1      OPC=retq            
                                                            
.size target, .-target
