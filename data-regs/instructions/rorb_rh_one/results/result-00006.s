  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %ah, %ecx  #  1     0    3      OPC=movsbl_r32_rh  
  movb %ah, %ch     #  2     0x3  2      OPC=movb_rh_rh     
  sarq $0x1, %rcx   #  3     0x5  3      OPC=sarq_r64_one   
  sbbb %cl, %ah     #  4     0x8  2      OPC=sbbb_rh_r8     
  retq              #  5     0xa  1      OPC=retq           
                                                            
.size target, .-target
