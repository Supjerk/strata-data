  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movsbw %ah, %dx  #  1     0    4      OPC=movsbw_r16_rh  
  movb %bl, %ah    #  2     0x4  2      OPC=movb_rh_r8     
  movb %dl, %bl    #  3     0x6  2      OPC=movb_r8_r8     
  retq             #  4     0x8  1      OPC=retq           
                                                           
.size target, .-target
