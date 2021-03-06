  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  adcb %bl, %ah    #  2     0x3  2      OPC=adcb_rh_r8    
  sarb $0x1, %ah   #  3     0x5  2      OPC=sarb_rh_one   
  xchgb %ah, %bl   #  4     0x7  2      OPC=xchgb_r8_rh   
  retq             #  5     0x9  1      OPC=retq          
                                                          
.size target, .-target
