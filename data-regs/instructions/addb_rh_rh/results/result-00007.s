  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movzbw %ah, %cx  #  1     0    4      OPC=movzbw_r16_rh  
  addb %cl, %bh    #  2     0x4  2      OPC=addb_rh_r8     
  movb %bh, %ah    #  3     0x6  2      OPC=movb_rh_rh     
  retq             #  4     0x8  1      OPC=retq           
                                                           
.size target, .-target
