  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode          
.target:         #        0    0      OPC=<label>     
  orb %bl, %bl   #  1     0    2      OPC=orb_r8_r8   
  subb %bl, %ah  #  2     0x2  2      OPC=subb_rh_r8  
  retq           #  3     0x4  1      OPC=retq        
                                                      
.size target, .-target
