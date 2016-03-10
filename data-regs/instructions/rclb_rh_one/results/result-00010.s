  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  movb %ah, %al   #  1     0    2      OPC=movb_r8_rh    
  adcw %ax, %ax   #  2     0x2  3      OPC=adcw_r16_r16  
  xchgb %ah, %al  #  3     0x5  2      OPC=xchgb_r8_rh   
  retq            #  4     0x7  1      OPC=retq          
                                                         
.size target, .-target
