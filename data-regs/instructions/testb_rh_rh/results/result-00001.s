  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  clc             #  1     0    1      OPC=clc          
  setnb %dl       #  2     0x1  3      OPC=setnb_r8     
  xaddb %dl, %ah  #  3     0x4  3      OPC=xaddb_rh_r8  
  testb %bh, %dl  #  4     0x7  2      OPC=testb_r8_rh  
  retq            #  5     0x9  1      OPC=retq         
                                                        
.size target, .-target
