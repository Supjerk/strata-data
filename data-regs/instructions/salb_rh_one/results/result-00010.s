  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode          
.target:         #        0    0      OPC=<label>     
  movb %ah, %ah  #  1     0    2      OPC=movb_rh_rh  
  addb %ah, %ah  #  2     0x2  2      OPC=addb_rh_rh  
  retq           #  3     0x4  1      OPC=retq        
                                                      
.size target, .-target
