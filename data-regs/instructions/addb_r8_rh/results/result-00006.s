  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode          
.target:         #        0    0      OPC=<label>     
  addb %bl, %ah  #  1     0    2      OPC=addb_rh_r8  
  movb %ah, %bl  #  2     0x2  2      OPC=movb_r8_rh  
  retq           #  3     0x4  1      OPC=retq        
                                                      
.size target, .-target
