  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  movsbl %bl, %edx  #  1     0    3      OPC=movsbl_r32_r8    
  sarw $0x1, %dx    #  2     0x3  3      OPC=sarw_r16_one     
  cmovnow %dx, %bx  #  3     0x6  4      OPC=cmovnow_r16_r16  
  retq              #  4     0xa  1      OPC=retq             
                                                              
.size target, .-target
