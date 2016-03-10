  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode          
.target:         #        0    0      OPC=<label>     
  notb %bl       #  1     0    2      OPC=notb_r8     
  cmc            #  2     0x2  1      OPC=cmc         
  adcb %bl, %ah  #  3     0x3  2      OPC=adcb_rh_r8  
  cmc            #  4     0x5  1      OPC=cmc         
  retq           #  5     0x6  1      OPC=retq        
                                                      
.size target, .-target
