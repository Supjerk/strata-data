  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %ah, %ecx  #  1     0    3      OPC=movsbl_r32_rh  
  cmpb %bh, %cl     #  2     0x3  2      OPC=cmpb_r8_rh     
  retq              #  3     0x5  1      OPC=retq           
                                                            
.size target, .-target
